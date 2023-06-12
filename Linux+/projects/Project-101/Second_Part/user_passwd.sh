#!/bin/bash
#
# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.      
# The username, password, and host for the account will be displayed.

# Make sure the script is being executed with superuser privileges.
if [[ $UID -ne 0 ]]
then
        echo "Please run this script with superuser privileges."
        exit 1
fi
# Get the username (login).
read -p "Enter the username to create: " username
# Get the real name (contents for the description field).
read -p "Enter person name: " real_name
# Get the password.
read -sp "Enter your password: " password
# Create the account.
useradd -c $real_name -m $username 2> /dev/null
# Check to see if the useradd command succeeded.
# We dont want to tell the user that an account was created when it hasn't been.
if [[ $? -ne 0 ]]
then
        echo -e "\nThis username is already exists."
        exit 1
fi
# Set the password.