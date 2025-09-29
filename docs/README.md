## README

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