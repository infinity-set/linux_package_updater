#!/bin/bash

# Define the path to the release file and log files
release_file="/etc/os-release"
error_log="$(pwd)/error_log"
success_log="$(pwd)/success_log"

# Function to check the exit code and display an error message
check_exit_code() {
    if [ $? -ne 0 ]; then
        echo "An error has occurred, check the '$error_log' file"
    fi
}

# Function to update packages using yum for CentOS or Red Hat
yum_update() {
    # CentOS or Red Hat
    sudo yum check-update >> "$success_log" 2>> "$error_log"
    check_exit_code
    sudo yum update -y >> "$success_log" 2>> "$error_log"
    check_exit_code
}

# Function to update packages using apt-get for Debian or Ubuntu
apt_update() {
    # Debian or Ubuntu
    sudo apt-get update >> "$success_log" 2>> "$error_log"
    check_exit_code
    sudo apt-get upgrade -y >> "$success_log" 2>> "$error_log"
    check_exit_code
}

# Check the release file for CentOS/Red Hat or Debian/Ubuntu
if grep -iq "cent" "$release_file" || grep -iq "red" "$release_file"; then
    yum_update
elif grep -iq "debian" "$release_file" || grep -iq "ubuntu" "$release_file"; then
    apt_update
else
    echo "Unsupported operating system"
    exit 1
fi

# Script is complete message
echo "Script is complete"
