FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
# Install some OS packages:
#   Xournalpp (note taking)
#   NeoVim (CLI Editor)
RUN apt update && apt -y install xournalpp neovim

# Create a conda env with some python libraries
ENV MY_ENV_NAME=myenv
RUN conda create -n $MY_ENV_NAME python=3.11.5 && \
    conda init && \
    conda install -n $MY_ENV_NAME numpy pandas matplotlib scipy ipykernel && \
    /opt/conda/envs/$MY_ENV_NAME/bin/python -m ipykernel install --name  $MY_ENV_NAME --display-name $MY_ENV_NAME
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
