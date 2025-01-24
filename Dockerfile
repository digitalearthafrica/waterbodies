FROM ghcr.io/osgeo/gdal:ubuntu-small-3.10.1

ENV SHELL=bash \
    DEBIAN_FRONTEND=non-interactive \
    USE_PYGEOS=0 \
    SPATIALITE_LIBRARY_PATH='mod_spatialite.so'

# Update sources list.
RUN apt clean && apt update \
  && apt install -y --fix-missing --no-install-recommends \
  # Install basic tools for developer convenience.
    curl \
    git \
    tmux \ 
    unzip \
    vim  \
    jq \
  # Install python and tools
    python3-full \
  # For psycopg2
    libpq-dev \ 
  # For hdstats
    python3-dev \
    build-essential \
  # For rasterio
    libtiff-tools \
  # For spatialite 
    libsqlite3-mod-spatialite \
  # Clean up.
  && apt clean \
  && apt  autoclean \
  && apt autoremove \
  && rm -rf /var/lib/{apt,dpkg,cache,log}

# Install AWS CLI.
WORKDIR /tmp
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

# Configure and set up python virtual environment
ENV VIRTUAL_ENV="/opt/venv"
ENV PATH="${VIRTUAL_ENV}/bin:${PATH}"
RUN python3 -m venv $VIRTUAL_ENV

# Copy source code.
RUN mkdir -p /code
WORKDIR /code
ADD . /code

# Install required python packages from requirements.txt.
RUN python -m pip install --upgrade pip pip-tools
RUN pip install -r requirements.txt

# Install source code.
RUN echo "Installing waterbodies through the Dockerfile."
RUN pip install .

RUN pip freeze && pip check

# Make sure it's working
RUN waterbodies --version