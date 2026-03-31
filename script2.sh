#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Piyush Kumar (24BCE10014)
# Software Choice: Git

# Setting the package as Git
PACKAGE="git"

echo " --- Commencing Package Inspection for: $PACKAGE --- "

# --- Package Installation Check ---
# Using 'dpkg -l' to check the local Debian package database
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "Status: $PACKAGE is successfully installed on this system."
    echo "----------------------------------------------------"
    
    # 'apt show' pulls the metadata for the specific package
    # We use 'grep -E' to extract only the Version, Homepage, and Size
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Homepage|Download-Size'
    
    echo "----------------------------------------------------"
else
    # Fallback if the package is missing
    echo "Status: $PACKAGE is NOT currently installed."
    echo "Action: Please run 'sudo apt install $PACKAGE' to proceed."
fi

# --- Case Statement: Philosophy & Context ---
# Providing the 'Why' behind the software choices
case $PACKAGE in
    "httpd"|"apache2")
        echo "Philosophy: Apache - The web server that built the open internet." 
        ;;
    "mysql"|"mysql-server")
        echo "Philosophy: MySQL - Open source at the heart of millions of apps." 
        ;;
    "git")
        echo "Philosophy: Git - The tool Linus built when proprietary failed him." 
        ;;
    "vlc")
        echo "Philosophy: VLC - A student-led project that plays anything." 
        ;;
    "firefox")
        echo "Philosophy: Firefox - A nonprofit fighting for an open web." 
        ;;
    *)
        echo "Philosophy: This is a valuable component of the FOSS ecosystem." 
        ;;
esac

echo " --- Inspection Complete --- "
