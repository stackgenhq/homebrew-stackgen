# StackGen Homebrew Tap

This is the official [Homebrew](https://brew.sh/) tap for [StackGen](https://stackgen.com/) tools. StackGen provides a suite of infrastructure-as-code tools for cloud infrastructure management, observability, and automation.

## Available Tools

This tap provides the following tools:

| Tool | Description |
|------|-------------|
| **stackgen** | Generative Infrastructure from Code - Main CLI for infrastructure management |
| **cloud2code** | Convert your cloud resources to Terraform state files |
| **genie** | AI-powered infrastructure generation assistant |
| **logexplorer** | Advanced log exploration and analysis tool |
| **stackgen-slo** | Service Level Objectives (SLO) management tool |
| **terraform-importer** | Parse and import Terraform IaC files into StackGen |
| **stackboot** | Bootstrap tool for StackGen projects |

## Prerequisites

Before you begin, make sure you have:

- **Homebrew** installed on your system. If you don't have Homebrew, install it with:
  ```shell
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- An account at <https://cloud.stackgen.com/> (or your organization's StackGen instance)

## Installation

### Installing Individual Tools

You can install any tool directly without adding the tap first:

```shell
# Install the main StackGen CLI
brew install stackgenhq/stackgen/stackgen

# Install cloud2code
brew install stackgenhq/stackgen/cloud2code

# Install genie
brew install stackgenhq/stackgen/genie

# Install logexplorer
brew install stackgenhq/stackgen/logexplorer

# Install stackgen-slo
brew install stackgenhq/stackgen/stackgen-slo

# Install terraform-importer
brew install stackgenhq/stackgen/terraform-importer

# Install stackboot
brew install stackgenhq/stackgen/stackboot
```

### Installing Multiple Tools

If you plan to install multiple tools, you can add the tap first:

```shell
# Add the tap
brew tap stackgenhq/stackgen

# Install tools (without needing the full path)
brew install stackgen
brew install cloud2code
brew install genie
```

### Verifying Installation

After installation, verify that the tool is installed correctly:

```shell
stackgen version
```

This should display the version of the installed tool.

## Configuration

### Cloud Service (cloud.stackgen.com)

To use StackGen tools with the cloud service:

1. Log in to your account at <https://cloud.stackgen.com/>

2. Navigate to your [personal access token settings](https://cloud.stackgen.com/account-settings/pat/)

3. Copy your personal access token (API key)

4. Set the token as an environment variable:

   ```shell
   export STACKGEN_TOKEN=<YOUR_API_KEY>
   ```

   Replace `<YOUR_API_KEY>` with your actual token.

5. (Optional) Add it to your shell profile to persist across sessions:

   ```shell
   # For bash
   echo 'export STACKGEN_TOKEN=<YOUR_API_KEY>' >> ~/.bashrc
   
   # For zsh
   echo 'export STACKGEN_TOKEN=<YOUR_API_KEY>' >> ~/.zshrc
   ```

### On-Premises Installation

If your organization uses a self-hosted StackGen instance:

1. Set the StackGen URL environment variable:

   ```shell
   export STACKGEN_URL="https://stackgen.<your-domain.com>"
   ```

2. Log in to your instance at `https://stackgen.<your-domain.com>/`

3. Navigate to your personal access token settings at `https://stackgen.<your-domain.com>/account-settings/pat/`

4. Copy your personal access token

5. Set the token as an environment variable:

   ```shell
   export STACKGEN_TOKEN=<YOUR_API_KEY>
   ```

6. (Optional) Add both variables to your shell profile for persistence:

   ```shell
   echo 'export STACKGEN_URL="https://stackgen.<your-domain.com>"' >> ~/.bashrc
   echo 'export STACKGEN_TOKEN=<YOUR_API_KEY>' >> ~/.bashrc
   ```

## Usage

Once installed and configured, you can start using the StackGen tools:

```shell
# View available StackGen CLI commands
stackgen --help

# Check version
stackgen version

# Cloud2Code - Import cloud resources to Terraform
cloud2code --help

# Genie - AI-powered infrastructure generation
genie --help

# Log Explorer - Analyze logs
logexplorer --help

# StackGen SLO - Manage service level objectives
stackgen-slo --help

# Terraform Importer - Import Terraform files
terraform-importer --help
```

For detailed documentation on each tool, visit the [StackGen Documentation](https://docs.stackgen.com/).

## Updating

To update any installed tool to the latest version:

```shell
# Update Homebrew and upgrade the tool
brew update
brew upgrade stackgen

# Or upgrade all StackGen tools at once
brew upgrade stackgenhq/stackgen
```

## Uninstalling

To remove any installed tool:

```shell
# Uninstall a specific tool
brew uninstall stackgen

# Remove the tap (after uninstalling all tools)
brew untap stackgenhq/stackgen
```

## Troubleshooting

### Command not found after installation

If you get a "command not found" error after installation:

1. Make sure Homebrew's bin directory is in your PATH:
   ```shell
   echo $PATH
   ```

2. If needed, add Homebrew to your PATH:
   ```shell
   # For Apple Silicon Macs
   echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zshrc
   
   # For Intel Macs
   echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zshrc
   ```

3. Restart your terminal or run:
   ```shell
   source ~/.zshrc
   ```

### Authentication issues

If you're having trouble authenticating:

1. Verify your token is set correctly:
   ```shell
   echo $STACKGEN_TOKEN
   ```

2. Make sure you have the correct permissions in your StackGen account

3. For on-premises installations, verify the `STACKGEN_URL` is set correctly

### Getting help

- Check the [StackGen Documentation](https://docs.stackgen.com/)
- Visit the [StackGen Community](https://community.stackgen.com/)
- Report issues on [GitHub](https://github.com/stackgenhq/homebrew-stackgen/issues)
- Contact support at <support@stackgen.com>

## Contributing

This tap is automatically updated by the StackGen release process. If you encounter any issues, please [open an issue](https://github.com/stackgenhq/homebrew-stackgen/issues/new).

## License

Individual tools have their own licenses. See the formula files for details:
- Most tools are licensed under Apache License 2.0
- Some tools (cloud2code, terraform-importer) are proprietary

For more information, visit <https://stackgen.com/>

