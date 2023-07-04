# Use an appropriate base image with PySpark and Jupyter Notebook preinstalled
FROM jupyter/pyspark-notebook:spark-3.4.1

# Set the working directory inside the Docker container
WORKDIR /PySpark-data_processing

# Expose the Jupyter Notebook port (default is 8888)
EXPOSE 8888

# Copy your notebook files to the container's working directory
COPY . /PySpark-data-processing/

# Start Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]