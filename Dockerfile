# Miniconda
FROM continuumio/miniconda3

# Install deps
RUN conda install -c conda-forge geopandas gdal matplotlib jupyter descartes -y

# Create a new system user
RUN useradd -ms /bin/bash jupyter

# Copy files
COPY ./NHD_H_Idaho_State_Shape/Shape/* /home/jupyter/NHD_H_Idaho_State_Shape/Shape/
COPY ./Shapefile_Demo.ipynb /home/jupyter/.

# Change to this new user
USER jupyter

# Set the container working directory to the user home folder
WORKDIR /home/jupyter

# Start the jupyter notebook
ENTRYPOINT ["jupyter", "notebook", "--ip=*"]