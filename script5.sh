#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your open source manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "---------------------------------------" > $OUTPUT
echo "Open Source Manifesto - $DATE" >> $OUTPUT
echo "---------------------------------------" >> $OUTPUT
echo "I believe open-source tools like $TOOL represent the spirit of $FREEDOM in technology." >> $OUTPUT
echo "In the future, I want to build $BUILD and share it freely with the community." >> $OUTPUT
echo "By contributing to open source, developers help create a world where knowledge and innovation are shared." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
