# Ansible Azure Setup

## Setup Instructions

Create a Python virtual environment (recommended):
```bash
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Install the Azure collection

```bash
# Install the Azure collection if not already installed
ansible-galaxy collection install azure.azcollection --force
```
```bash
pip install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements.txt
```


