#!/bin/bash

# Prepare build directory
output_dir="../_build"
mkdir -p "$output_dir"

# Run notebooks and convert to HTML
for tutorial in ../MUSE_OS/docs/user-guide/*.ipynb; do
    jupyter nbconvert --to html --execute "$tutorial" --output-dir="$output_dir"    
done;

# Update relative links in HTML files
base_url="https://muse-os.readthedocs.io/en/latest/user-guide/" 
find "$output_dir" -name '*.html' | while read -r html_file; do
    sed -i '' -E "s|href=\"([^\"]*).rst\"|href=\"$base_url\1.html\"|g" "$html_file"
done

# Specify tutorial order
order=(
    "add-solar"
    "add-agent"
    "add-region"
    "modify-timing-data"
    "min-max-timeslice-constraints"
    "additional-service-demand"
    "add-gdp-correlation-demand"
)

# Move HTML files to corresponding folders
for i in "${!order[@]}"; do
    file="${order[$i]}"
    number=$((i + 1))
    folder_name="hands_on_$number"
    mkdir -p "$output_dir/$folder_name"
    mv -f "$output_dir/$file.html" "$output_dir/$folder_name/$folder_name.html"
done