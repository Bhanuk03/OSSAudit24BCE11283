#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh logfile keyword

LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword is "error"
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "------------------------------------"
echo "Log File: $LOGFILE"
echo "Keyword: $KEYWORD"
echo "Occurrences found: $COUNT"
echo "------------------------------------"
