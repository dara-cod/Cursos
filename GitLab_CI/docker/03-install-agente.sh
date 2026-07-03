#!/bin/bash

# Instalar o Gitlab-Runner
sudo curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt-get install gitlab-runner

# Inserir usuário gitlab-runner ao grupo docker
sudo usermod -aG docker gitlab-runner

# Adicionar o gitlab-runner ao sudo sem pedir senha
sudo echo "gitlab-runner    ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
