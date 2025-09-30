# Tutorial

## Setup the workspace

- create a new GitHub Codespace
- get the OpenShift login-token
- create the Jumpstarter client, if not present

## Build and test the application

## Build the AutoSD image

## Create a virtual device

```shell
jmp get exporters

jmp shell --client developer --selector platform=qemu-arm

j power off

.scripts/flash.sh

j power on && j console start-console

# login with root@password

# exit with 3x Ctrl-B
```

## Flash to SoC

- TBD

<!-- 
https://docs.github.com/en/codespaces/developing-in-a-codespace/default-environment-variables-for-your-codespace

```bash
python3.12 -m venv venv
source venv/bin/activate

# install the dependencies
pip install -r requirements.txt
```

# demo script

oc login ..

USER=`oc whoami`

.scripts/jumpstarter.sh

jmp get exporters

jmp shell --client developer --selector platform=qemu-arm

j power off

.scripts/flash-prebuilt.sh

j power on && j console start-console

root
password

uname -m

3x ctrl-b

-->