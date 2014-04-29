#!/usr/bin/env bash

function prepareForPython {
    # install pythoon dev header to resolve dependencies later, check sklearn later for possible newer dependencies
    apt-get -y install python-dev libatlas-dev libatlas3-base

    # install python pip for easier management
    if [ -n $(which pip) ]; then
        apt-get -y install python-pip
    fi

    if [ -n $(which ipython) ]; then
        pip install ipython
        apt-get -y install ipython-notebook
    fi

    # numpy for array and matrix with python
    pip install numpy

    # pandas depends on numpy, install after numpy, if problem arises, even consider install it after scipy
    pip install pandas
    
    # apt-get to install scipy and matplotlib to avoid dependencies annoyance
    apt-get -y install python-scipy
    apt-get -y install python-matplotlib

    pip install scikit-learn
}


if [ "$UID" -ne 0 ]; then
    echo "This script must be run as root" 
else
    prepareForPython
fi
