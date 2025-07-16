# GitHub Fork Synchronization Script

## Overview

This script is designed to simplify the process of synchronizing your GitHub forks of specific `redhat-appstudio-qe` repositories with their upstream `main` or `default` branches. This is particularly useful for users involved in Konflux integration E2E tests who need to keep their testing organization's forks up-to-date.

## Prerequisites

Before using this script, ensure you have:

* **GitHub CLI (`gh`) installed:** You can download it from [cli.github.com](https://cli.github.com/).
* **Logged in to GitHub CLI:** Run `gh auth login` and follow the prompts to authenticate.
* **Appropriate Permissions:** You must have the necessary permissions to sync forks within your specified GitHub organization and access the upstream `redhat-appstudio-qe` repositories.

## How to Use

You have two options for using this synchronization process:

### Option 1: (Easy Way) Run the Script

1.  **Save the script:** Save the provided content into a file named `sync_forks.sh` (or any other `.sh` extension).
2.  **Navigate to folder:** Change your directory to where `sync_forks.sh` is located.
3.  **Make it executable:**
    ```bash
    chmod +x sync_forks.sh
    ```
4.  **Run the script:**
    ```bash
    ./sync_forks.sh
    ```
    The script will prompt you to enter your GitHub organization name (e.g., `bsimpson-testing`).

### Option 2: (Manual Way) Paste into Terminal

If you prefer to execute the commands manually, you can copy and paste the following into your terminal. **Remember to replace `YOUR_ORG_NAME` with your actual GitHub organization name.**

```bash
# Replace YOUR_ORG_NAME with your GitHub organization name
gh repo sync YOUR_ORG_NAME/konflux-test-integration-clone -b main
gh repo sync YOUR_ORG_NAME/group-snapshot-multi-component -b main
gh repo sync YOUR_ORG_NAME/konflux-test-integration-with-env -b main
gh repo sync YOUR_ORG_NAME/konflux-test-integration -b main
gh repo sync YOUR_ORG_NAME/konflux-test-integration-status-report -b main
gh repo sync YOUR_ORG_NAME/devfile-sample-hello-world -b default
gh repo sync YOUR_ORG_NAME/strategy-configs -b main
gh repo sync YOUR_ORG_NAME/hacbs-test-project -b main