#!/bin/bash
# Script 1: System Identity Report
# Author: Bhanu | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Bhanu"
SOFTWARE_CHOICE="Git"

# --- System Information ---
DISTRO=$(lsb_release -d | cut -f2)
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# --- Display Output ---
echo "========================================"
echo "   Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Chosen Software: $SOFTWARE_CHOICE"
echo ""
echo "Linux Distribution : $DISTRO"
echo "Kernel Version     : $KERNEL"
echo "Current User       : $USER_NAME"
echo "Home Directory     : $HOME_DIR"
echo "System Uptime      : $UPTIME"
echo "Current Date/Time  : $DATE_TIME"
echo ""
echo "This Linux system is covered under the GNU General Public License (GPL)."
echo "========================================"
