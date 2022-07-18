FROM gnasello/datascience-env:latest

USER root

# Create scImm environment
ADD environment.yml .
RUN conda env create -f environment.yml
ADD scintegration_r_packages.R .
RUN /opt/conda/envs/scintegration/bin/Rscript scintegration_r_packages.R

# Set the scImm virtual environment as the default environment at startup
RUN echo "conda env list" >> ~/.bashrc
RUN echo "conda activate scintegration" >> ~/.bashrc