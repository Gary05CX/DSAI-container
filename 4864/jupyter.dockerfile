# Start from Jupyter's official datascience-notebook
FROM jupyter/base-notebook:latest

WORKDIR  /workspace
COPY overrides.json /opt/conda/share/jupyter/lab/settings/
COPY requirements.txt /requirements.txt

USER root

RUN apt-get update && apt-get install -y git

RUN pip3 install -r /requirements.txt

# Expose default Jupyter port
EXPOSE 8888

# Start JupyterLab, set root directory to /
CMD ["jupyter", "lab", "--allow-root", "--notebook-dir=/workspace"]
