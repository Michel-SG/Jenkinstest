# Utilisation de la syntaxe avancée pour build check
# syntax=docker/dockerfile:1
# check=error=true

# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

# # Utiliser Ubuntu 22.04 comme base
# FROM ubuntu:jammy

# # Mettre à jour les paquets et installer les dépendances nécessaires
# RUN apt-get update && apt-get install -y \
#     git \
#     curl \
#     gnupg2 \
#     build-essential \
#     libssl-dev \
#     libreadline-dev \
#     zlib1g-dev \
#     libyaml-dev \
#     libffi-dev \
#     libgdbm-dev \
#     libncurses5-dev \
#     libdb-dev \
#     && rm -rf /var/lib/apt/lists/*

# # Définir la version de Ruby à installer
# ARG RUBY_VERSION=3.2.2

# # Installer rbenv pour gérer les versions de Ruby
# RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv \
#     && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc \
#     && echo 'eval "$(rbenv init -)"' >> ~/.bashrc \
#     && /bin/bash -c "source ~/.bashrc" \
#     && git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build \
#     && ~/.rbenv/plugins/ruby-build/install.sh \
#     && ~/.rbenv/bin/rbenv install $RUBY_VERSION \
#     && ~/.rbenv/bin/rbenv global $RUBY_VERSION

# # Ajouter rbenv au PATH
# ENV PATH="/root/.rbenv/bin:/root/.rbenv/shims:$PATH"

# # Vérifier l'installation de Ruby
# RUN ruby --version

# # Définir le répertoire de travail
# WORKDIR /app

# # Commande par défaut
# CMD ["irb"]

