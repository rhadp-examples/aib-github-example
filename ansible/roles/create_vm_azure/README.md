# create_vm_azure

This Ansible role creates a RHEL 10 VM on Azure using ARM64 architecture. It follows the same structure as the `create_vm_aws` role but uses Azure-specific modules and configuration.

## Features

- Creates a RHEL 10 VM with ARM64 architecture (Standard_D2ps_v5)
- Sets up all necessary Azure networking resources (Resource Group, VNet, Subnet, NSG)
- Configures security group rules for SSH, HTTP, and HTTPS access
- Attaches and mounts an additional data disk
- Supports both installation and cleanup operations

## Requirements

- `azure.azcollection` Ansible collection
- Azure service principal credentials configured in inventory
- SSH public key file for VM access

## Variables

### Variables from inventory/main.yml:
- `azure_guid`: Unique identifier for resource naming
- `azure_resourcegroup`: Existing or target resource group name
- `azure_client_id`, `azure_password`, `azure_tenant`, `azure_subscription`: Azure authentication
- `ansible_user`: SSH username for VM access (default: azureuser)
- `remote_ssh_public_key_file`: Path to SSH public key file

### Variables defined in `defaults/main.yml`:
- `vm_size`: Azure VM size (default: Standard_D2ps_v5 for ARM64)
- `azure_location`: Azure region (default: East US 2)
- `boot_disk_size`: OS disk size in GB (default: 30)
- `additional_disk_size`: Data disk size in GB (default: 100)
- `volume_mount_point`: Mount point for additional disk (default: /mnt/data)

## Usage

### Installation
Set `ACTION=INSTALL` and run the role to create the VM and all associated resources.

### Uninstall
Set `ACTION=UNINSTALL` and run the role to clean up all Azure resources.

## Architecture

The role creates the following Azure resources (using `azure_guid` for unique naming):
1. Resource Group (uses existing `azure_resourcegroup` or creates new with azure_guid)
2. Virtual Network and Subnet (named with azure_guid suffix)
3. Network Security Group with firewall rules (SSH, HTTP, HTTPS)
4. Public IP Address and Network Interface
5. Virtual Machine with OS and data disks

The data disk is automatically formatted with ext4 and mounted at `/mnt/data` with persistent fstab entry.