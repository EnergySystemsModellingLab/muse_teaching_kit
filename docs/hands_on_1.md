
# Hands-on exercise 1: Installing MUSE

This first hands-on exercise will show you how to install MUSE on your computer.

If at any point you get stuck with any of these exercises, feel free to post a question in the [MUSE Google group](https://groups.google.com/g/muse-model), if your question hasn't already been answered, or raise an issue on [Github](https://github.com/EnergySystemsModellingLab/MUSE_OS). You can also consult the full MUSE documentation [here](https://muse-os.readthedocs.io/en/latest/).

## Installing MUSE in a virtual environment

MUSE is a Python-based tool, so Python must be installed on your machine.

The simplest method to install Python is by downloading the [Anaconda distribution](https://www.anaconda.com/). Once installed on your machine, this will allow you to create isolated environments containing all the dependencies needed for a project, with a specific Python version.

This version of the course is based on MUSE version x.x.x, which requires Python 3.9 to 3.12 (we would recommend 3.12). If you're using Anaconda, you can create and activate an environment with the following commands:

    conda create -n muse_env python=3.12
    conda activate muse_env

Once you've activated the environment, run the following command to install MUSE version x.x.x:

    python -m pip install muse_os==x.x.x

Later, you can return to this environment by simply running:

    conda activate muse_env

If you're already comfortable with creating virtual Python environments and installing packages, feel free to do this whichever way you choose. You can also see [here](https://muse-os.readthedocs.io/en/latest/installation/index.html) for more detailed installation instructions, including a number of alternative methods for installing MUSE.

## Confirming the installation

To confirm that the installation has worked, run the following in your command line:

    python -m muse --model default

If the installation has worked correctly, you should see output text similar to [this](https://muse-os.readthedocs.io/en/latest/example-output.html).

You should also see that a folder called `Results` has been created in your working directory. Don't worry about the contents of this folder for now, as we will be analysing these results in the next exercise.
