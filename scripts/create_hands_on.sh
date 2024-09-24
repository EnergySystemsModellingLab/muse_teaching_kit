#!/bin/bash

convert_notebook() {
    # Run notebook, convert to HTML and return path to the output file
    local notebook=$1
    jupyter nbconvert --to html --execute "$notebook" --output-dir="$output_dir"
    local output_file="${output_dir}/$(basename "${notebook%.*}.html")"
    echo "$output_file"
}

update_links() {
    # Update relative links in HTML file
    local html_file=$1
    local base_url=$2
    sed -i '' -E "s|href=\"([^\"]*).rst\"|href=\"$base_url\1.html\"|g" "$html_file"
}

# Prepare build directory
output_dir="_build"
mkdir -p "$output_dir"

# Hands-on 1
ho1="docs/hands_on_1.md"
pandoc --standalone $ho1 -o $output_dir/hands_on_1.html

# Hands-on 2
notebook="MUSE_OS/docs/running-muse-example.ipynb"
html_file=$(convert_notebook $notebook)
update_links $html_file "https://muse-os.readthedocs.io/en/latest/"

# Hands-on 3-9
notebooks=(MUSE_OS/docs/user-guide/*.ipynb)
for notebook in "${notebooks[@]}"; do
    html_file=$(convert_notebook "$notebook")
    update_links $html_file "https://muse-os.readthedocs.io/en/latest/user-guide/"
done

# Specify tutorial order
order=(
    "hands_on_1"
    "running-muse-example"
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
