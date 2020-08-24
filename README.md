# Terraform workshop

## Prerequisites

- Azure account
- Azure CLI (`choco install -y azure-cli`)
- Terraform (`choco install -y terraform --version=0.12.29`)

After you have these prerequisites installed, it's best to make sure you're logged in with the azure CLI in order to run terraform scripts with further hassle:

```powershell
az login
```

This command will open a web browser which will prompt you to login to Azure, if logged in successfully a token will be saved in your user profile with which the Azure CLI tooling can access your account.
