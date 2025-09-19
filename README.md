# aib-github-example

## Overview 

In this example you will learn how to develop, build, and test a simple automotive application using 
GitHub CodeSpaces, GitHub Actions and the Red Hat Automotive Development Platform (RHADP).

The sample application is a simple `radio-service` that emulates a radio, regularly publishing information about the current track, the radio station, and volume level. 
The `radio-client` application connects to the radio service and requests to turn it on/off, to change the radio station, and adjust the volume.

It demonstrates how typical automotive applications use [SOME/IP](https://some-ip.com,window=_blank) to communicate. 
The application is written in C++ and uses the [CMake](https://cmake.org,window=_blank) build system.


## Getting started

In order to use this example, you have to prepare your GitHub environment by creating a set of variables and secrets.
Follow the steps described in the [setup guide](docs/setup.md).

A complete step-by-step walkthrough of how to use this example is [here](docs/README.md).


## Contributing

Fork the repository and submit a pull request.

## Development

A list of ideas, open issues etc related to the Red Hat Automotive Development Platform (RHADP) is [here](https://github.com/orgs/rhadp/projects/1).  

Also check the [Issues](https://github.com/rhadp-examples/aib-rhadp-example/issues) section of the this repository.
