#!/bin/bash

# Author: Nigel Byrne
# Date: 16 July 2025
# Version 1.0.1
# This script is used to sync the forks for konflux integration E2E tests to the users testing organization.
# It assumes you are logged in to GitHub CLI (gh auth login) and have appropriate permissions for your forks and their upstreams.

echo "...................................."
echo " GitHub Fork Synchronization Script"
echo ""

echo "Enter github org name (e.g. bsimpson-testing): "
read -p "" user_org
if [[ -z "$user_org" ]]; then
    echo "Error: GitHub organization name cannot be empty. Exiting."
    exit 1
fi

echo ""

echo "Sync redhat-appstudio-qe/konflux-test-integration-clone"
gh repo sync $user_org/konflux-test-integration-clone -b main

echo "Sync redhat-appstudio-qe/group-snapshot-multi-component"
gh repo sync $user_org/group-snapshot-multi-component -b main

echo "Sync redhat-appstudio-qe/konflux-test-integration-with-env"
gh repo sync $user_org/konflux-test-integration-with-env -b main

echo "Sync redhat-appstudio-qe/konflux-test-integration"
gh repo sync $user_org/konflux-test-integration -b main

echo "Sync redhat-appstudio-qe/konflux-test-integration-status-report"
gh repo sync $user_org/konflux-test-integration-status-report -b main

echo "Sync redhat-appstudio-qe/devfile-sample-hello-world"
gh repo sync $user_org/devfile-sample-hello-world -b default

echo "Sync redhat-appstudio-qe/strategy-configs"
gh repo sync $user_org/strategy-configs -b main

echo "Sync redhat-appstudio-qe/hacbs-test-project"
gh repo sync $user_org/hacbs-test-project -b main

echo "Sync redhat-appstudio-qe/infradeployments"
gh repo sync $user_org/infra-deployments -b main

echo ""
echo "Synchronization process finished."
echo "...................................."
