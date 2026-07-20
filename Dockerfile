FROM ghcr.io/runatlantis/atlantis:v0.35.1

USER root

RUN apk add --no-cache \
    bash \
    git \
    curl \
    wget \
    jq \
    yq \
    python3 \
    py3-pip

#############################################
# Terraform
#############################################

ARG TERRAFORM_VERSION=1.9.8

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
    && mv terraform /usr/local/bin/terraform \
    && chmod +x /usr/local/bin/terraform \
    && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

#############################################
# Terragrunt
#############################################

ARG TERRAGRUNT_VERSION=1.0.7

RUN wget https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 \
    && mv terragrunt_linux_amd64 /usr/local/bin/terragrunt \
    && chmod +x /usr/local/bin/terragrunt

#############################################
# AWS CLI
#############################################

RUN pip3 install --no-cache-dir awscli

USER atlantis