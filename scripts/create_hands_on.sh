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

update_github_links() {
    local html_file=$1
    local new_tag=$2
    sed -i '' 's|\(https://github.com/EnergySystemsModellingLab/MUSE_OS/blob/\)[^/]*|\1'"$new_tag"'|g' "$html_file"
}

# Prepare build directory
output_dir="_build"
mkdir -p "$output_dir"

# Hands-on 1
notebook="docs/installation.ipynb"
convert_notebook $notebook

# Hands-on 2
notebook="docs/running-muse-example.ipynb"
(cd docs && rm -rf Results && muse --model default)
convert_notebook $notebook

# Hands-on 3-9
notebooks=(MUSE_OS/docs/user-guide/*.ipynb)
for notebook in "${notebooks[@]}"; do
    html_file=$(convert_notebook "$notebook")
    update_relative_links $html_file "https://muse-os.readthedocs.io/en/v1.2.1/user-guide/"
    update_github_links $html_file "v1.2.1"
done

# Specify tutorial order
order=(
    "installation"
    "running-muse-example"
    "add-solar"
    "additional-service-demand"
    "add-gdp-correlation-demand"
    "add-agent"
    "add-region"
    "modify-timing-data"
    "min-max-timeslice-constraints"
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
