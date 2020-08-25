# Terraform workshop

## Prerequisites

Regardless of the approaches documented below, you'll need an Azure account to which you have permission to deploy resources.

### VSCode dev container

Play it like the cool kids 😎 and just open this repo in a VSCode dev container:

- Make sure docker works on your computer (in case of windows, preferable with WSL2)
- Install VSCode and the [Remote - Containers extension](vscode:extension/ms-vscode-remote.remote-containers)
- Press F1 and choose 'Remote Containers: Open repository in container...'
- Paste the URL of this repo into the input box and press enter

### Install dependencies on your dev machine

Or go full commando and install the requirements below onto your dev machine

- Azure CLI (`choco install -y azure-cli`)
- Terraform (`choco install -y terraform --version=0.12.29`)

### Common

Regardless of which method you chose, it's best to make sure you're logged in with the azure CLI in order to run terraform scripts with further hassle:

```powershell
az login
```

This command will guide you to login to Azure, if logged in successfully a token will be saved in your user profile with which the Azure CLI tooling can access your account.
