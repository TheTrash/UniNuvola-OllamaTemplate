FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##

# Update system and install dependencies
RUN apt-get update && \
    apt-get install -y curl gnupg ca-certificates software-properties-common python3-pip git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Install Python dependencies for RAG agent
RUN pip3 install --no-cache-dir \
    langchain \
    chromadb \
    sentence-transformers \
    ollama \

# Create app directory
WORKDIR /app

# Expose Ollama port
EXPOSE 11434

## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
