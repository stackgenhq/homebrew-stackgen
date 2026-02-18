# StackGen Homebrew Tap

Install StackGen's CLI and tools via [Homebrew](https://brew.sh).

---

## Table of contents

- [Prerequisites](#prerequisites)
- [Available formulae](#available-formulae)
- [Quick install (StackGen CLI)](#quick-install-stackgen-cli)
- [Install other tools](#install-other-tools)
- [Configuration](#configuration)
- [Usage](#usage)

---

## Prerequisites

- **Homebrew** — Install if needed:

  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

- **StackGen account** (for cloud) — Sign up at [cloud.stackgen.com](https://cloud.stackgen.com/)

---

## Available formulae

| Formula | Description | Install command |
|--------|-------------|-----------------|
| **stackgen** | Main CLI — Generative Infrastructure from Code | `brew install stackgenhq/homebrew-stackgen/stackgen` |
| **stackgen-beta** | StackGen CLI (beta/RC releases) | `brew install stackgenhq/homebrew-stackgen/stackgen-beta` |
| **stackgen-slo** | SLO app — Generative Infrastructure from Code | `brew install stackgenhq/homebrew-stackgen/stackgen-slo` |
| **terraform-importer** | Parse Terraform IaC and import into Stackgen | `brew install stackgenhq/homebrew-stackgen/terraform-importer` |
| **cloud2code** | Convert cloud resources to tfstate files | `brew install stackgenhq/homebrew-stackgen/cloud2code` |
| **cloud2code-beta** | Cloud2code (beta/RC releases) | `brew install stackgenhq/homebrew-stackgen/cloud2code-beta` |
| **logexplorer** | Log Explorer | `brew install stackgenhq/homebrew-stackgen/logexplorer` |
| **genie** | Generative Infrastructure from Code (Genie) | `brew install stackgenhq/homebrew-stackgen/genie` |
| **stackboot** | Generative Infrastructure from Code (StackBoot, macOS only) | `brew install stackgenhq/homebrew-stackgen/stackboot` |

---

## Quick install (StackGen CLI)

1. Add the tap and install:

   ```bash
   brew tap stackgenhq/homebrew-stackgen
   brew install stackgenhq/homebrew-stackgen/stackgen
   ```

2. Check the install:

   ```bash
   stackgen version
   ```

---

## Install other tools

Use the same pattern for any formula from the [table above](#available-formulae):

```bash
brew tap stackgenhq/homebrew-stackgen   # only needed once
brew install stackgenhq/homebrew-stackgen/<formula>
```

Examples:

```bash
brew install stackgenhq/homebrew-stackgen/terraform-importer
brew install stackgenhq/homebrew-stackgen/cloud2code
brew install stackgenhq/homebrew-stackgen/logexplorer
```

---

## Configuration

The CLI **requires** both a base URL and an API token.

### Required environment variables

| Variable | Required | Description |
|----------|----------|-------------|
| `STACKGEN_URL` | **Yes** | Base URL of the StackGen API (cloud or on-prem). |
| `STACKGEN_TOKEN` | **Yes** | Your API key (personal access token). |

### Cloud (cloud.stackgen.com)

1. Log in at [cloud.stackgen.com](https://cloud.stackgen.com/).
2. Open [Personal access tokens](https://cloud.stackgen.com/account-settings/pat/) and copy your API key.
3. Set both in your shell:

   ```bash
   export STACKGEN_URL="https://cloud.stackgen.com"
   export STACKGEN_TOKEN=<YOUR_API_KEY>
   ```

   Add these lines to `~/.zshrc` or `~/.bashrc` to make them persistent.

### On-premises

Use your organization’s StackGen URL and API key:

```bash
export STACKGEN_URL="https://my-org.stackgen.com"
export STACKGEN_TOKEN=<YOUR_API_KEY>
```

---

## Usage

After installing **stackgen**:

```bash
stackgen --help
```

For other tools, run the binary name (e.g. `terraform-importer --help`, `logexplorer --help`).

---

## Links

- [StackGen](https://stackgen.com/)
- [Documentation](https://docs.stackgen.com/)
