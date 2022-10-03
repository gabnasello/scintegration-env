FROM gnasello/datascience-env:latest

USER root

# Create the conda environments developed by theislab for 
# for benchmarking atlas-level single-cell integration 
RUN git clone https://github.com/theislab/scib-pipeline /scib-pipeline

WORKDIR /scib-pipeline
RUN bash envs/create_conda_environments.sh -r 4.0

# update an existing Conda environment with a .yml file
# https://stackoverflow.com/questions/42352841/how-to-update-an-existing-conda-environment-with-a-yml-file
ADD environment.yml /
RUN conda env update --name scib-pipeline-R4.0 --file /environment.yml --prune

# Set the scImm virtual environment as the default environment at startup
RUN echo "conda env list" >> ~/.bashrc
RUN echo "conda activate scib-pipeline-R4.0" >> ~/.bashrc