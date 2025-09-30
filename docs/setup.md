## GitHub setup

## Secrets and Variables

Using Jumpstarter and building the container and operating system images depends on a set of variables and secrets, either on the organization or repository level.

### Variables

Define the following variables:

| Name     | Scope    | Usage    | Default |
|----------|----------|----------|----------|
| REGISTRY        | Organization   | Actions | quay.io  |
| REGISTRY_ORG    | Organization   | Actions | quay.io/rhadp-examples  |
| ARTEFACT_BUCKET | Repository     | Actions | *** |
| JUMPSTARTER_GRPC_ENDPOINT | Organization   | Actions, Codespaces, Dev Spaces | https://grpc.rhadp...  |

### Secrets

Define the following secrets:

| Name     | Scope    | Usage    | Default |
|----------|----------|----------|----------|
| ROOT_PASSWORD       | Repository     | Actions | ***  |
| REGISTRY_USERNAME   | Organization   | Actions | ***  |
| REGISTRY_TOKEN      | Organization   | Actions | ***  |
| AWS_ACCESS_KEY_ID     | Organization | Actions | ***  |
| AWS_SECRET_ACCESS_KEY | Organization | Actions | ***  |
| AWS_S3_REGION         | Organization | Actions | ***  |


## GitHub Runner

Building assets (app, containers, OS image) happens on self-hosted GitHub Runner instances. The runner instances are deployed on a Red Hat OpenShift cluster, on ARM nodes. 
In order to deploy the runner instances, a `Runner group` must be created on the GitHub organization level.

Create the runner group: [aib-runners](https://github.com/organizations/rhadp-examples/settings/actions/runner-groups)

<!-- 
#### VM

Store the VM private key as a secret on the `Organization` and `Codespaces` level:

```shell
gh secret set BUILDER_PRIVATE_KEY < $HOME/.ssh/rhadp-vm -a codespaces && \
gh secret set BUILDER_PRIVATE_KEY --visibility all < $HOME/.ssh/rhadp-vm -o rhadp-examples
```

-->