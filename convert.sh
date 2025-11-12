#!/usr/bin/env bash

# Convert all images to PNG format for swww compatibility
for file in *.jpg *.jpeg *.jxl; do
  if [[ -f "$file" ]]; then
    output="${file%.*}.png"
    echo "Converting $file to $output"
    magick "$file" "$output"
  fi
done

# Remove non-PNG files
rm -f *.jpg *.jpeg *.jxl

echo "All wallpapers converted to PNG format"
