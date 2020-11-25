#!/bin/bash
git clone https://github.com/fastai/fastai.git
git clone https://github.com/fastai/fastbook.git
sudo apt-get install graphviz
python_version=3.7
conda create -y --name fastaienv python=$python_version
source /etc/profile.d/conda.sh
conda activate fastaienv
pip install -r requirements.txt
pip install -Uqq fastbook
python -m ipykernel install --user --name fastaienv --display-name "Python (fastaienv)"
