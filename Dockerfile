FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##

# Update system and install dependencies
RUN apt-get update && \
    apt-get install -y curl gnupg ca-certificates software-properties-common python3-pip

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Install Python Ollama library
RUN pip3 install ollama

# Expose Ollama default port
EXPOSE 11434

## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan

# Default command to run Ollama server
CMD ["ollama", "serve"]
