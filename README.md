# DSAI-container

This project provides a containerized environment for Data Science and AI courses.  
Each course has its own dedicated container (e.g., MongoDB, PostgreSQL, RStudio, Jupyter, LLM).  
Additionally, a shared Jupyter container can be used for general purposes.

## Project Structure

```
DSAI-container/
├── database/              # Databases
│   ├── MongoDB/           # MongoDB container
│   └── PostgreSQL/        # PostgreSQL container (with init.sql)
├── jupyter/               # JupyterLab container
│   ├── dockerfile
│   ├── overrides.json
│   └── workspace/
├── rstudio/               # RStudio container
│   └── dockerfile
├── vscode/                # VSCode (code-server) container
│   ├── dockerfile
│   ├── workspace/
│   └── init/              # Preloaded extensions & settings
└── docker-compose.yml     # Main compose file

````

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

- **VSCode** →  [`1210`](http://localhost:1210)  

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

### 6. VSCode Environment

The VSCode container (`code-server`) comes pre-installed with:

* **Languages / Runtimes**:

  * Node.js + Yarn
  * Python
  * Go
  * Rust
  * Java (OpenJDK)
  * C / C++ (via gcc, g++)
  * Git (with GitHub/GitLab support)

* **Extensions** (defined in `vscode/init/extensions.txt`)

* **Settings & Theme** (from `vscode/init/settings.json`)

You can modify `vscode/init/` to customize your environment.
On build, extensions will be auto-installed and settings applied.