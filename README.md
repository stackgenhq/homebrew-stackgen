# AppCd Homebrew Installation

This guide will walk you through the steps to install AppCd using Homebrew.

## Prerequisites

Before you begin, make sure you have the following:

- An account at <https://cloud.appcd.io/>
- Homebrew installed on your system. If you don't have Homebrew installed, you can install it by running the following command in your terminal:

    ```shell
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

## Installation

Follow these steps to install AppCd using Homebrew:

1. Open your terminal.

2. Run the following command to add the AppCd tap:

     ```shell
     brew install appcd-dev/homebrew-appcd/appcd
     ```

3. After the installation is complete, you can verify the installation by running the following command:

     ```shell
     appcd version
     ```

     This should display the version of AppCd installed on your system.

## Configuring

### Using our cloud service

To configure AppCd, you need to set your API key. Follow these steps:

1. Log in to your account at <https://cloud.appcd.io/>.

2. Navigate to your [personal access token settings](https://cloud.appcd.io/account-settings/pat/).

3. Copy your API key.

4. Run the following command in your terminal to set the API key:

     ```shell
     export APPCD_TOKEN=<YOUR_API_KEY>
     ```

     Replace `<YOUR_API_KEY>` with your actual API key.

### Using on-premises installation

```sh
export APPCD_URL="https://appcd.<acme.org>"
```

1. Log in to your account at <https://appcd.acme.org/>.

2. Navigate to your personal access token settings @ <https://appcd.acme.org/account-settings/pat/>.

3. Copy your API key.

4. Run the following command in your terminal to set the API key:

     ```shell
     export APPCD_TOKEN=<YOUR_API_KEY>
     ```

     Replace `<YOUR_API_KEY>` with your actual API key.

## Usage

You can now start using AppCd. Run the following command to see the available commands:
