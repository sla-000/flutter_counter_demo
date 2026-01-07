#!/bin/bash

# Resize WebP images from 3.0x folders to 2.0x and 1.0x using ImageMagick.
# Usage: ./scripts/resize_images.sh [root_directory]

ROOT_DIR="${1:-.}"

if [ ! -d "$ROOT_DIR" ]; then
  echo "Error: Directory not found: $ROOT_DIR"
  exit 1
fi

echo "Searching for '3.0x' directories in: $ROOT_DIR..."

find "$ROOT_DIR" -type d -name "3.0x" | while read -r DIR_3X; do
  echo "Processing: $DIR_3X"
  
  PARENT_DIR="$(dirname "$DIR_3X")"
  DIR_2X="$PARENT_DIR/2.0x"
  
  # Create 2.0x directory if it doesn't exist
  if [ ! -d "$DIR_2X" ]; then
    mkdir -p "$DIR_2X"
    echo "  Created 2.0x directory: $DIR_2X"
  fi
  
  # Process each webp file in 3.0x
  find "$DIR_3X" -maxdepth 1 -name "*.webp" | while read -r FILE_3X; do
    FILENAME="$(basename "$FILE_3X")"
    FILE_2X="$DIR_2X/$FILENAME"
    FILE_1X="$PARENT_DIR/$FILENAME"
    
    # 3.0x is 100%
    # 2.0x is 66.66% -> resize to 66.66%
    # 1.0x is 33.33% -> resize to 33.33%
    
    # Resize to 2.0x (High Quality Lanczos)
    magick "$FILE_3X" -resize 66.66% -filter Lanczos "$FILE_2X"
    echo "  Generated 2.0x: $FILE_2X"
    
    # Resize to 1.0x (High Quality Lanczos)
    magick "$FILE_3X" -resize 33.33% -filter Lanczos "$FILE_1X"
    echo "  Generated 1.0x: $FILE_1X"
    
  done
done

echo "Done."
