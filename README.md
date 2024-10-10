# StackGen Homebrew Installation

This guide will walk you through the steps to install `stackgen` using Homebrew.

## Prerequisites

Before you begin, make sure you have the following:

- An account at <https://cloud.stackgen.com/>
- Homebrew installed on your system. If you don't have Homebrew installed, you can install it by running the following command in your terminal:

    ```shell
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

## Installation

Follow these steps to install `stackgen` using Homebrew:

1. Open your terminal.

2. Run the following command to add the stackgen tap:

     ```shell
     brew install stackgenhq/homebrew-stackgen/stackgen
     ```

3. After the installation is complete, you can verify the installation by running the following command:

     ```shell
     stackgen version
     ```

     This should display the version of `stackgen` installed on your system.

## Configuring

### Using our cloud service

To configure `stackgen`, you need to set your API key. Follow these steps:

1. Log in to your account at <https://cloud.stackgen.com/>.

2. Navigate to your [personal access token settings](https://cloud.stackgen.com/account-settings/pat/).

3. Copy your API key.

4. Run the following command in your terminal to set the API key:

     ```shell
     export STACKGEN_TOKEN=<YOUR_API_KEY>
     ```

     Replace `<YOUR_API_KEY>` with your actual API key.

### Using on-premises installation

```sh
export STACKGEN_URL="https://stackgen.<acme.org>"
```

1. Log in to your account at <https://stackgen.acme.org/>.

2. Navigate to your personal access token settings @ <https://stackgen.acme.org/account-settings/pat/>.

3. Copy your API key.

4. Run the following command in your terminal to set the API key:

     ```shell
     export STACKGEN_TOKEN=<YOUR_API_KEY>
     ```

     Replace `<YOUR_API_KEY>` with your actual API key.

## Usage

You can now start using `stackgen`. Run the following command to see the available commands:
