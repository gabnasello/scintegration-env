# Create a Docker Image for scRNA-seq data analysis of the Single-cell integration benchmarking project

## How it works

The ```Dockerfile``` creates a Docker Image from [gabnasello/scintegration-env](https://hub.docker.com/repository/docker/gnasello/datascience-env). It creates the scintegration virtual environment from the ```environment.ylm``` file.

The DockerImage contains the set of Python and R packages required to analyze the scRNA-seq batch integration methods in the [Single-cell integration benchmarking](https://theislab.github.io/scib-reproducibility/index.html).

## Create a new image

First, clone the repo:

```git clone https://github.com/gabnasello/scintegration-env.git``` 

and run the following command to build the image (you might need sudo privileges):

```docker build --no-cache -t scintegration-env:latest .```

Then you can follow the instructions in the [Docker repository](https://hub.docker.com/repository/docker/gnasello/scintegration-env) to use the virtual environment.

Enjoy scRNA-seq data analysis!