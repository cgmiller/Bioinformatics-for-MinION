#!/bin/bash

# Install Nextflow
curl -s https://get.nextflow.io | bash
sudo mv nextflow /usr/local/bin/

# Install Miniconda (if not present in the base image)
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
~/miniconda3/bin/conda init bash

# Add Bioconda channels for tools like seqkit and samtools
~/miniconda3/bin/conda config --add channels defaults
~/miniconda3/bin/conda config --add channels bioconda
~/miniconda3/bin/conda config --add channels conda-forge
