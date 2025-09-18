# aib-github-example

Build AutoSD with GitHub Actions

## Secrets and Variables

### Variables

| Name     | Scope    | Usage    | Default |
|----------|----------|----------|----------|
| REGISTRY        | Organization   | Actions | quay.io  |
| REGISTRY_ORG    | Organization   | Actions | quay.io/rhadp-examples2  |
| ARTEFACT_BUCKET | Repository     | Actions | *** |
| JUMPSTARTER_GRPC_ENDPOINT | Organization   | Actions, Codespaces, Dev Spaces | https://grpc.rhadp...  |


### Secrets

| Name     | Scope    | Usage    | Default |
|----------|----------|----------|----------|
| REGISTRY_USERNAME   | Organization   | Actions | ***  |
| REGISTRY_TOKEN      | Organization   | Actions | ***  |
| BUILDER_PRIVATE_KEY | Organization   | Actions, Codespaces | *** |
| ROOT_PASSWORD       | Repository     | Actions | ***  |
| AWS_ACCESS_KEY_ID     | Organization | Actions | ***  |
| AWS_SECRET_ACCESS_KEY | Organization | Actions | ***  |
| AWS_S3_REGION         | Organization | Actions | ***  |


Store the VM private key as a secret on the `Organization` and `Codespaces` level:

```shell
gh secret set BUILDER_PRIVATE_KEY < $HOME/.ssh/rhadp-vm -a codespaces && \
gh secret set BUILDER_PRIVATE_KEY --visibility all < $HOME/.ssh/rhadp-vm -o rhadp-examples
```
