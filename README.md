# plotly-notebook

Jupyter Stack image for interactive, exploratory data exploration with plotly.

## Usage

Run JupyterLab container:

    docker run -p 8888:8888 fkromer/plotly-notebook

Run JupyterLab container with examples mounted into container:

    docker run -v "$PWD/examples":/home/jovyan/work/examples -p 8888:8888 fkromer/plotly-notebook

## Development

    make build

