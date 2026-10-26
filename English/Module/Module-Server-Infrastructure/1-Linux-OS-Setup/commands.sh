#!/usr/bin/env bash

# Print current working directory path.
pwd

# Display the username of the active shell user.
whoami

# Inspect available filesystem storage capacity in human-readable units (e.g. GB).
df -h

# Display total, used, and available system RAM memory.
free -h

# Command to refresh package repository metadata indices; does not install or upgrade packages.
# Run manually in your Ubuntu VM once prompted for sudo authentication.
# sudo apt update
