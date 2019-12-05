# Copyright (c) Florian Kromer
# Distributed under the terms of the Modified BSD License.

ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Florian Kromer <florian.kromer@mailbox.org>"

USER $NB_UID

RUN conda install --quiet --yes -c conda-forge \
    dash=1.4.1 \
    dash-bootstrap-components=0.7.2 \
    dash-daq=0.2.2 \
    ipywidgets=7.5.1 \
    #jupyterlab-chart-editor \
    #jupyterlab-dash=0.1.0a3 \
    plotly=4.3.0 \
    plotly_express=0.4.1 && \
    conda clean --all -f -y && \
    jupyter nbextension enable --py widgetsnbextension --sys-prefix && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build && \
    #jupyter labextension install jupyterlab-chart-editor --no-build && \
    #jupyter labextension install jupyterlab-dash --no-build && \
    jupyter lab build && \
    npm cache clean --force && \
    rm -rf $CONDA_DIR/share/jupyter/lab/staging && \
    rm -rf /home/$NB_USER/.cache/yarn && \
    rm -rf /home/$NB_USER/.node-gyp && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

RUN pip install --no-cache-dir \
    jupyter-plotly-dash==0.3.1 && \
    #rm -rf /home/$NB_USER/.local && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER $NB_USER
