# MUSE: Teaching Kit

This repository contains the teaching material developed by Imperial College London for the course "MUSE: Agent-based energy systems modelling" developed under the Climate Compatible Growth project.

The course is published on [Open Learn Create](https://www.open.edu/openlearncreate/course/view.php?id=11717) and is free to learners.

The course material is licensed under a [Creative Commons BY 4.0 License](https://creativecommons.org/licenses/by/4.0).
This license allows you to use, remix and publish the course material as long as you give correct attribution.  
Please use the following citation:

    Alexander J. M. Kell, Sara Giarola, Adam Hawkes. (2022, August 6). ClimateCompatibleGrowth/muse_teaching_kit: Initial release of lecture blocks. Zenodo. https://doi.org/10.5281/zenodo.5166742

## Setup

Generating the course files requires Python, and the dependencies listed in the file `requirements.txt`.
To create a suitable Python environment, run:

        python -m venv .venv
        source .venv/bin/activate
        python -m pip install -r requirements.txt
        python -m ipykernel install --name=muse_kernel

The latest version of the course was generated using Python version 3.12, and MUSE version x.x.x.

You must also have [pandoc](https://pandoc.org/) installed on your machine.

## Creating the teaching material

1. To generate the HTML files in the `_build` folder, run:

        bash scripts/create_hands_on.sh
        bash scripts/create_lectures.sh

2. To create a SCORM package for each of the lecture blocks, run the deployment script:

        bash scripts/deploy.sh

    This creates a zip archive for each lecture e.g. for `lecture4` from the material in folder `lecture_4`.
    Each zip files contains the following special files for a SCORM package:

        adlcp_rootv1p2.xsd
        ims_xml.xsd
        imscp_rootv1p1p2.xsd
        imsmanifest.xml
        imsmd_rootv1p2p1.xsd
        res  # This contains the lecture blocks and assets (image files)

# Common formatting issues

## References

- Ensure that reference authors are formatted as follows:

        Joe Bloggs and Tracy Ervin Smith
        Bloggs, J. and Smith, T.~E.

## Images

- SCORM packages seem to be very sensitive to the case of filenames.
  Always use lower-case for file endings and ensure that filenames referenced in the lectures exactly match the filename.
  For example `assets/Figure_1.1.1.PNG` will not be linked if `![](assets/Figure_1.1.1.png)` is used to embed the image.
- Images should be of a good enough resolution to be viewed across 100% width of the text column.
  Use `![](assets/Figure_1.1.1.png){width=100%}` to adjust this.
