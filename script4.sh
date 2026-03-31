#!/bin/bash
# Script 4: Log File Analyzer
# Author: Piyush Kumar (24BCE10014)
# Software Choice: Git

# --- Variable Definitions ---
# The first argument ($1) is the log file to analyze
LOGFILE=$1
# Default keyword is "error" if $2 is not provided
KEYWORD=${2:-"error"}
COUNT=0

# --- File Existence Check ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: The log file '$LOGFILE' not found."
    echo "Usage: ./script4.sh [logfile] [keyword]"
    exit 1
fi

# --- Do-While Style Retry Logic ---
# Checking if the file is empty (-s checks if file size > 0)
while [ ! -s "$LOGFILE" ]; do
    echo "File is currently empty. Retrying in 2 seconds..."
    sleep 2
done

echo " --- Analyzing $LOGFILE for keyword: '$KEYWORD' --- "

# --- Main Processing Loop (Unit 2 & 5 Concept) ---
# IFS= prevents leading/trailing whitespace from being trimmed
while IFS= read -r LINE; do
    # Checking for the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        # Incrementing the counter variable using Bash arithmetic
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Output Summary ---
echo "----------------------------------------------------------"
echo "Search Complete."
echo "Total occurrences of '$KEYWORD': $COUNT"
echo "----------------------------------------------------------"

# --- Print last 5 matching lines ---
# Using tail and grep to show the most recent relevant entries
if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching entries found:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
    echo "----------------------------------------------------------"
else
    echo "No matches found for '$KEYWORD' in $LOGFILE."
fi
