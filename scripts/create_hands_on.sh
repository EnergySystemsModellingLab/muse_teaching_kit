#!/bin/bash

convert_notebook() {
    # Run notebook, convert to HTML and return path to the output file
    local notebook=$1
    jupyter nbconvert --to html --execute --ExecutePreprocessor.kernel_name=muse_kernel --template classic "$notebook" --output-dir="$output_dir"
    local output_file="${output_dir}/$(basename "${notebook%.*}.html")"
    echo "$output_file"
}

update_relative_links() {
    # Update relative links in HTML file
    local html_file=$1
    local base_url=$2
    sed -i '' -E "s|href=\"([^\"]*).rst\"|href=\"$base_url\1.html\"|g" "$html_file"
}

# Prepare build directory
output_dir="_build"
mkdir -p "$output_dir"

# Hands-on 1
notebook="docs/installation.ipynb"
html_file=$(convert_notebook $notebook)

# Hands-on 2
notebook="MUSE_OS/docs/running-muse-example.ipynb"
html_file=$(convert_notebook $notebook)
update_relative_links $html_file "https://muse-os.readthedocs.io/en/latest/"

# Hands-on 3-9
notebooks=(MUSE_OS/docs/user-guide/*.ipynb)
for notebook in "${notebooks[@]}"; do
    html_file=$(convert_notebook "$notebook")
    update_relative_links $html_file "https://muse-os.readthedocs.io/en/latest/user-guide/"
done

# Specify tutorial order
order=(
    "installation"
    "running-muse-example"
    "add-solar"
    "add-agent"
    "add-region"
    "modify-timing-data"
    "min-max-timeslice-constraints"
    "additional-service-demand"
    "add-gdp-correlation-demand"
)

# Rename files
for i in "${!order[@]}"; do
    file="${order[$i]}"
    number=$((i + 1))
    new_name="hands_on_$number"
    mv -f "$output_dir/$file.html" "$output_dir/$new_name.html"

    # Modify title
    sed -i '' "s/\(<h1[^>]*>\)\([^<]*\)/\1Hands-on exercise ${number}: \2/" "$output_dir/$new_name.html"
done
