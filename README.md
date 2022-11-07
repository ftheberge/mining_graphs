# Mining Complex Networks - Practical Methods for Mining Graphs using Python-igraph
Material for short course on Mining Complex Networks

## Reference Book

"Mining Complex Networks" (https://www.ryerson.ca/mining-complex-networks) by B. Kaminski, P. Pralat and F. Théberge.

Notebooks and datasets to accompany this textbook can be found at: https://github.com/ftheberge/GraphMiningNotebooks

## Software environment

The Python Notebook was created under the following conda environment:

```
conda create --name mining_graphs python=3.7.9 numpy pandas jupyter matplotlib pycairo scikit-learn
source activate mining_graphs
pip install igraph
pip install partition-igraph

python -m ipykernel install --user --name=mining_graphs ## add to Jupyter
```

The environment can be optionally created, managed and maintained reproducibly using `make` commands. To create and activate the conda environment:
```
make create_environment
source activate mining_graphs
```

## Other references

python-igraph documentation: https://igraph.readthedocs.io/en/0.10.2/

introductory guide: https://towardsdatascience.com/newbies-guide-to-python-igraph-4e51689c35b4
