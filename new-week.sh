#!/bin/bash

read -p "Enter week number (e.g. 03): " WEEK
DATE=$(date +"%B %d, %Y")
FOLDER="journals"
FILENAME="$FOLDER/week-${WEEK}.md"

# 🔧 Create the folder if it doesn't exist
mkdir -p "$FOLDER"

cat <<EOF > "$FILENAME"
# 📅 Week ${WEEK} Journal — [${DATE}]

## ✅ What I Completed

## 📘 What I Learned

## 🛠️ What I Built

## 🤯 Challenges Faced

## 🎯 Goals for Next Week

## 📌 Notes & Resources
EOF

echo "✅ Created $FILENAME"
