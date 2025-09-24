# rstudio/dockerfile
FROM rocker/rstudio:latest

# 更新並安裝系統套件（git、sudo、編譯相關套件）
RUN apt-get update --allow-releaseinfo-change && \
    apt-get install -y --no-install-recommends \
      git sudo build-essential libxml2-dev libssl-dev libcurl4-openssl-dev && \
    rm -rf /var/lib/apt/lists/*

# 建立 admin 使用者並設定密碼為 admin；給予無密碼 sudo（方便測試）
RUN useradd -m -s /bin/bash itp4864 && \
    echo "itp4864:itp4864" | chpasswd && \
    adduser itp4864 sudo

# 工作目錄（你要求的 /workspace）
WORKDIR /workspace
RUN mkdir -p /workspace && chown itp4864:itp4864 /workspace

# 預先安裝 ggplot2（會安裝到系統 library）
RUN R -e "install.packages('ggplot2', repos='https://cloud.r-project.org')"

# 複製 RStudio 偏好設定
COPY rstudio-prefs.json /etc/rstudio/rstudio-prefs.json


EXPOSE 8787

# 使用 rocker 的原本 entrypoint/init（保留正常認證流程）
CMD ["/init"]
