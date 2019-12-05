# Jupyter Notebook Interactive Data Exploration Python Stack

[Jupyter Docker Stack](https://github.com/jupyter/docker-stacks) image
containing everything needed for interactive, exploratory data exploration with
[plotly (Python)](https://plot.ly/python/) and [dash](https://plot.ly/dash/).
Built on top of
[scipy-notebook](https://github.com/jupyter/docker-stacks/tree/master/scipy-notebook).

## Usage

Run JupyterLab container:

    docker run -p 8888:8888 fkromer/plotly-notebook

Run JupyterLab container with examples mounted into container:

    docker run -v "$PWD/examples":/home/jovyan/work/examples -p 8888:8888 fkromer/plotly-notebook

## Development

Setup test env:

    pipenv shell
    make test-env

Run tests:

    make test

Build image:

    make build

## Reference

Please visit the documentation site for help using and contributing to this image and others.

* [Jupyter Docker Stacks on ReadTheDocs](http://jupyter-docker-stacks.readthedocs.io/en/latest/index.html)
* [Selecting an Image :: Core Stacks :: jupyter/scipy-notebook](http://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html#jupyter-scipy-notebook) - Base image of this project.

