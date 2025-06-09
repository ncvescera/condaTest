FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN conda create -n mycoolenv python=3.11.5 && \
    conda init && \
    conda install -n mycoolenv numpy pandas matplotlib scipy ipykernel && \
    /opt/conda/envs/mycoolenv/bin/python -m ipykernel install --name  mycoolenv --display-name mycoolenv
    # /opt/conda/bin/conda shell.bash deactivate
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
