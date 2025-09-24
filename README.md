# DSAI-container

This project provides a containerized environment for Data Science and AI courses.  
Each course has its own dedicated container (e.g., MongoDB, PostgreSQL, RStudio, Jupyter, LLM).  
Additionally, a shared Jupyter container can be used for general purposes.

## Project Structure

```
.
├── 4471/                 # Course-specific container
├── 4864/                 # Course-specific container
├── 4865/                 # Course-specific container
├── database/
│   ├── MongoDB/          # MongoDB container
│   └── PostgreSQL/       # PostgreSQL container
├── jupyter/              # General-purpose Jupyter container
├── llm/                  # LLM container
├── rstudio/              # RStudio container
├── docker-compose.yml    # Compose file to orchestrate everything
└── README.md
```

## Requirements

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Usage

### 1. Clone the repository
```bash
git clone https://github.com/Gary05CX/DSAI-container.git
cd DSAI-container
```

### 2. Build and start all containers
```bash
docker compose up 
```

### 3. Access the services

- **Jupyter(Everything)** → `50110`

- **Jupyter(Itp4864)** → `4864`

- **Jupyter(iIp4865)** → `4865`

- **Jupyter(Itp4471)** → `4471`

- **RStudio(Itp4864)** → [`4684`](http://localhost:4684)  
  Username: `itp4864`  
  Password: `itp4864`

- **MongoDB** → Exposed on port `27018`

- **PostgreSQL** → Exposed on port `5433`

- **LLM container(Ollama)** → Runs baExposed on port `11435`


### 4. Stop containers
```bash
docker compose down
```
OR
Press `CTRL+C` (or `^+C` in MacOS) in terminal

### 5. Persistent Data
- Databases (MongoDB/Postgres) can be mapped to volumes if persistence is required.
- By default, containers reset when rebuilt.



