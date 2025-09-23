# DSAI Container Setup

This repository contains Docker configurations for various services and applications used in Data Science and AI (DSAI) projects. Below you'll find details about the containers, their exposed ports, and instructions for setup and usage.

## Container Ports Overview

Here is a list of containers and their corresponding exposed ports for easy access and configuration:

- **Ollama**: 11435
- **MongoDB**: 27018
- **PostgreSQL**: 5433
- **Everything**: 50110
- **ITP4471**: 4471
- **ITP4864**: 4864
- **ITP4865**: 4865

## Installed Packages and Environments

Below is a detailed list of packages and environments installed in each container:

- **Ollama (Port: 11435)**:
  - Base Image: `ollama/ollama`
  - Installed: `pipx`, `ollama` with models `mxbai-embed-large:latest` and `nomic-embed-text:latest`

- **MongoDB (Port: 27018)**:
  - Base Image: `mongo:latest`
  - Installed: Standard MongoDB server

- **PostgreSQL (Port: 5433)**:
  - Base Image: `postgres:latest`
  - Installed: PostgreSQL server with locale set to `en_US.UTF-8` and timezone to `Asia/Hong_Kong`
  - Environment Variables: `POSTGRES_USER=postgres`, `POSTGRES_PASSWORD=postgres`, `POSTGRES_DB=postgres`

- **Everything (Port: 50110)**:
  - Base Image: Not specified in the provided files
  - Languages Installed: Likely includes Python, Node.js, and other languages based on the context of related containers. Specific details are not available from the provided files.

- **ITP4471 (Port: 4471)**:
  - Base Image: `jupyter/base-notebook:latest`
  - Installed Python Packages: `pandas`, `scipy`, `plotly`, `matplotlib`, `scikit-learn`, `seaborn`, `numpy`, `graphviz`
  - Additional Tools: `git`

- **ITP4864 (Port: 4864)**:
  - Base Image: `jupyter/base-notebook:latest`
  - Installed Python Packages: `pandas`, `scipy`, `plotly`, `matplotlib`
  - Additional Tools: `git`

- **ITP4865 (Port: 4865)**:
  - Base Image: `jupyter/base-notebook:latest`
  - Installed Python Packages: `pandas`, `pymongo`, `scikit-learn`, `scipy`, `seaborn`, `plotly`, `matplotlib`
  - Node.js Packages: `ijavascript`, `tslab`, `typescript`, `ts-node`, `mongodb`, `mongoose`, `dotenv`
  - Additional Tools: `git`

- **Jupyter**:
  - Base Image: `jupyter/datascience-notebook:latest`
  - Installed: Node.js with `ijavascript`, `tslab`, `typescript`, `ts-node`; Ruby with `iruby`; Python package `jupyterthemes` with theme `monokai`
  - Additional Tools: `git`

**Note**: Git is installed in the `ITP4471`, `ITP4864`, `ITP4865`, and `Jupyter` containers, allowing for version control operations directly within these environments.

## Getting Started

### Prerequisites
- Ensure you have Docker and Docker Compose installed on your system.

### Running the Containers
To start all the containers defined in the `docker-compose.yml` file, use the following command:

```shell
docker-compose up
```

### Stopping the Containers
To stop the running containers, use `CTRL+C`( `⌃+C`) or:

```shell
docker-compose down
```

## Storage Information

- **Workspace**: The workspace directories in each service folder are used for persistent data or code related to specific projects or configurations.
- **Database Data**: The `.database_data` directories in the MongoDB and PostgreSQL folders are used to store database files persistently, ensuring data is not lost when containers are stopped or removed.

## Additional Notes

- Ensure that the ports listed above are not in use by other applications on your host machine to avoid conflicts.
- For individual container configurations or to modify settings, refer to the respective `dockerfile` and `overrides.json` files located in each service's directory.

## Contributing
If you have suggestions or improvements, feel free to fork this repository, make your changes, and submit a pull request.
