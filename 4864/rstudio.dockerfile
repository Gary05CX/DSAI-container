# rstudio/dockerfile
FROM rocker/rstudio:latest

# Update and install system packages (git, sudo, build-related packages)
RUN apt-get update --allow-releaseinfo-change && \
    apt-get install -y --no-install-recommends \
      git sudo build-essential libxml2-dev libssl-dev libcurl4-openssl-dev && \
    rm -rf /var/lib/apt/lists/*

# Create admin user with password 'itp4864'; grant passwordless sudo (for testing convenience)
RUN useradd -m -s /bin/bash itp4864 && \
    echo "itp4864:itp4864" | chpasswd && \
    adduser itp4864 sudo

# Working directory (as per your request: /workspace)
WORKDIR /workspace
RUN mkdir -p /workspace && chown itp4864:itp4864 /workspace

# Pre-install ggplot2 (will be installed to system library)
RUN R -e "install.packages('ggplot2', repos='https://cloud.r-project.org')"

# Copy RStudio preferences configuration
COPY rstudio-prefs.json /etc/rstudio/rstudio-prefs.json


EXPOSE 8787

# Use rocker's original entrypoint/init (maintains standard authentication process)
CMD ["/init"]
