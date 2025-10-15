# Development Environment Recommendations (TODO)

## .devcontainer/devcontainer.json
- Uses custom image: `quay.io/mickume/codespaces:latest` (tailored for RHADP/automotive dev)
- Sets `remoteUser` to `user`
- CMake source: `src`, build: `build`
- Runs `/home/tooling/.scripts/init-workspace` after container creation

## .devfile.yaml
- Schema: 2.3.0
- Tags: automotive, rhivos, jumpstarter
- Single container, same image as devcontainer
- Resource limits: 4Gi/1Gi RAM, 4/1 CPU (consider making tunable)
- `mountSources: true`
- Sets `JUMPSTARTER_GRPC_ENDPOINT` env var (placeholder)
- Runs `init-workspace` command on postStart

## Recommendations
1. **Consistency**: Keep devcontainer and devfile in sync (image, scripts, tools).
2. **Resource Requests**: Consider making RAM/CPU settings tunable for different environments.
3. **Environment Variables**: Document how/when to set `JUMPSTARTER_GRPC_ENDPOINT` for contributors.
4. **Init Script**: Ensure `/home/tooling/.scripts/init-workspace` is idempotent and well-documented.
5. **CMake Settings**: If supporting multi-config builds (Debug/Release), document or expose this.
6. **Devfile/Devcontainer Parity**: Sync any new tools/extensions between both configs.
7. **VS Code Extensions**: Recommend or add C++, CMake Tools, etc. to `devcontainer.json`.
8. **Documentation**: Add usage/setup instructions for these environments in README or CONTRIBUTING.md.
