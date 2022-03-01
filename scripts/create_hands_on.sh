#!/bin/bash
for handson in docs/hands_on_*; do
for filename in $handson/*.md; do
    echo Converting "$filename"

    MD_NAME=$(basename "$filename" .md)
    DIR_NAME=$handson
    BIBFILE=$DIR_NAME/*.bib
    OUTPUT=_build/$(basename $handson)

    CSL=https://climatecompatiblegrowth.github.io/style/csl-style.css
    PAN=https://climatecompatiblegrowth.github.io/style/pandoc.css
    CITESTYLE=https://raw.githubusercontent.com/citation-style-language/styles/master/chicago-author-date.csl

    MD_TMP=$MD_NAME.tmp.md
    cat $filename > $MD_TMP

    if test -f "$BIBFILE"; then
        # Render citations and write bibliography to HTML
        echo "" >> $MD_TMP
        echo "# Bibliography" >> $MD_TMP
        pandoc --mathjax --standalone --css $PAN --css $CSL --citeproc $MD_TMP --bibliography $BIBFILE -o $OUTPUT/$MD_NAME.html  --csl $CITESTYLE
    else
        pandoc --mathjax --standalone --css $PAN --css $CSL $MD_TMP -o $OUTPUT/$MD_NAME.html
    fi
    if test -d "$OUTPUT/assets"; then
        rm -r $OUTPUT/assets/*
    fi
    mkdir -p $OUTPUT/assets
    cp -f $DIR_NAME/assets/* $OUTPUT/assets
    rm $MD_TMP
done;
done;
# Clean up