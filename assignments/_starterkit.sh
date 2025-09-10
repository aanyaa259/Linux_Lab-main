#!/bin/bash
# ==========================================================
# Starter Kit Setup Script
# Run as: bash starter_kit.sh
# ==========================================================

set -e  # Exit if any command fails

# === Create folder structure ===
mkdir -p project/{scripts,docs,data}

# === Add placeholder README.md in each folder ===
for dir in project project/scripts project/docs project/data
do
    echo "# README for $(basename $dir)" > "$dir/README.md"
done

# === Final message ===
echo "Starter Kit Ready!"