# Copilot Instructions for AI Coding Agents

## Project Overview
This repository contains sample automotive applications demonstrating inter-process communication using SOME/IP, written in C++ and built with CMake. The main components are:
- **engine-service**: Emits events (e.g., car reversing) via SOME/IP.
- **radio-service**: Emulates a radio, publishes track/station/volume, and reacts to engine-service events.
- **radio-client**: CLI tool to control and monitor radio-service.

## Architecture & Data Flow
- Services communicate using the SOME/IP protocol (see `vsomeip3` usage in code).
- `radio-service` listens for events from `engine-service` and adjusts behavior (e.g., volume down when reversing).
- All apps can run natively or in containers.

## Build & Development Workflow
- **Native build:**
  ```sh
  cmake .
  make
  ```
- **RPM build:**
  ```sh
  make -f Makefile.rpm srpm
  make -f Makefile.rpm rpm
  ```
- **Container build:**
  ```sh
  podman build -f Containerfile.auto-apps
  # or
  make -f Makefile.container build
  ```
- **Dependencies:** Boost, vsomeip3, dlt-daemon (see [COPR repo](https://copr.fedorainfracloud.org/coprs/alexl/cs9-sample-images/packages/)).

## Key Conventions & Patterns
- **Service IDs, event IDs, and SOME/IP constants** are defined in `services.hpp`.
- **Cross-service communication** is handled via SOME/IP callbacks and event subscriptions (see `engine-service.cpp`, `radio-service.cpp`).
- **Containerization**: Use provided `Containerfile` and Makefile helpers for building images.
- **Testing/Debugging**: Use the CLI client (`radio-client`) to interact with services.

## References
- [src/README.md](../src/README.md): App details and build instructions
- [docs/README.md](../docs/README.md): End-to-end workflow and environment setup
- [services.hpp](../src/services.hpp): Protocol/service definitions

## Tips for AI Agents
- Follow the build and containerization patterns as shown in the Makefiles and `Containerfile`.
- When adding new services, define protocol constants in `services.hpp` and follow the event/callback structure in existing services.
- Reference the CLI client for usage patterns and integration testing.
- Prefer CMake for build logic; update Makefiles only for packaging or container-specific steps.
