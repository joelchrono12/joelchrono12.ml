#!/bin/bash

MD_FOLDER="$HOME/Documents/git/joelchrono12.ml/_posts"

# Get URL from input
if [ -z "$1" ]; then
    read -p "Enter article URL: " url
else
    url="$1"
fi

# Fetch article HTML
html=$(curl -Ls --max-filesize 300000 "$url")

# Extract article title
title=$(echo "$html" | grep -i -o '<title[^>]*>.*</title>' | sed -E 's/<\/?title[^>]*>//Ig' | head -n1 | xargs)

# Extract author from microformats
author=$(echo "$html" | grep -oP 'class="[^"]*p-author[^"]*"[^>]*>[^<]+' | sed -E 's/.*>([^<]+).*/\1/' | head -n1 | xargs)

# Fallbacks
[ -z "$title" ] && title="No title found"
[ -z "$author" ] && author="Unknown Author"

# YAML block to insert
yaml_entry="  - url: $url\n    author: $author\n    title: $title"

# Let user select a markdown file with fzf
selected_file=$(find "$MD_FOLDER" -type f -name "*.md" | sk --prompt="Select a markdown file: ")

# Exit if no file selected
[ -z "$selected_file" ] && echo "No file selected. Aborting." && exit 1

# Check if file has a 'links:' key in front matter
if grep -q '^mentions:' "$selected_file"; then
    # Insert after 'links:' (indented YAML list)
    awk -v new_entry="$yaml_entry" '
        BEGIN { added=0 }
        /^mentions:/ {
            print
            next
        }
        /^[^[:space:]-]/ && !added {
            print new_entry
            added=1
        }
        { print }
        END { if (!added) print new_entry }
    ' "$selected_file" > "$selected_file.tmp" && mv "$selected_file.tmp" "$selected_file"

else
    # Insert a new links section before the closing ---
    awk -v new_entry="$yaml_entry" '
        BEGIN { in_front_matter=0; inserted=0 }
        /^---$/ {
            if (in_front_matter == 0) {
                in_front_matter = 1
                print
                next
            } else if (!inserted) {
                print "mentions:"
                print new_entry
                inserted = 1
                print
                next
            }
        }
        { print }
    ' "$selected_file" > "$selected_file.tmp" && mv "$selected_file.tmp" "$selected_file"
fi

# Optional: Copy to clipboard
echo -e "- url: $url\n  author: $author\n  title: $title" | xclip -selection clipboard

# Notify user
echo -e "✅ Metadata added to:\n$selected_file"

