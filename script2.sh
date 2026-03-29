#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "----------------------------"

# Check if package is installed
if dpkg -l | grep -q "$PACKAGE"
then
    echo "$PACKAGE is installed."

    echo "Package details:"
    dpkg -l | grep "$PACKAGE"
else
    echo "$PACKAGE is NOT installed."
fi

echo "----------------------------"

# Case statement to describe the package
case $PACKAGE in
    git)
        echo "Git: a distributed version control system used by developers."
        ;;
    firefox)
        echo "Firefox: an open-source web browser."
        ;;
    vlc)
        echo "VLC: an open-source multimedia player."
        ;;
    mysql)
        echo "MySQL: an open-source database management system."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
