# MiningComplexNetworks_2022
Material for short course on Mining Complex Networks

# Reference Book

"Mining Complex Networks" (https://www.ryerson.ca/mining-complex-networks) by B. Kaminski, P. Pralat and F. Théberge.

Notebooks and datasets to accompany this textbook can be found at: https://github.com/ftheberge/GraphMiningNotebooks

## Software environment

The Python Notebook was created under the following conda environment:

```
conda create --name shortcourse python=3.7.9 numpy pandas jupyter matplotlib pycairo
source activate shortcourse
pip install igraph
pip install partition-igraph

python -m ipykernel install --user --name=shortcourse ## add to Jupyter
```
