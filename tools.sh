#!/bin/bash

set -e
set -o pipefail

LOCALBIN=$HOME/bin

mkdir -p ${LOCALBIN}

KUBE_VERSION="v1.24.1"
HELM_VERSION="v3.9.0"
TERRAGRUNT_VERSION="v0.37.1"
PACKER_VERSION="1.8.1"
TERRAFORM_VERSION="1.2.2"
VAULT_VERSION="1.9.1"
AWS_IAM_AUTHENTICATOR_VERSION="1.21.2/2021-07-05"
AWS_VAULT_VERSION="v6.6.0"
HELMFILE_VERSION="v0.144.0"

# curl -s -L \
#     https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl \
#         -o ${LOCALBIN}/kubectl && chmod 755 ${LOCALBIN}/kubectl

# curl -s -L https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz \
#     | tar zx --strip-components=1  -C ${LOCALBIN} linux-amd64/helm \
#     && chmod 755 ${LOCALBIN}/helm

# curl -s -L https://github.com/gruntwork-io/terragrunt/releases/download/${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 \
#     -o ${LOCALBIN}/terragrunt && chmod 755 ${LOCALBIN}/terragrunt


# curl -s -L https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip \
#     -o ${LOCALBIN}/packer.zip && unzip ${LOCALBIN}/packer.zip packer -d ${LOCALBIN}/ \
#     && rm -f ${LOCALBIN}/packer.zip && chmod 755 ${LOCALBIN}/packer
 
# curl -s -L https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
#     -o ${LOCALBIN}/terraform.zip && unzip ${LOCALBIN}/terraform.zip terraform -d ${LOCALBIN}/ \
#     && rm -f ${LOCALBIN}/terraform.zip && chmod 755 ${LOCALBIN}/terraform

# curl -s -L https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip \
#     -o ${LOCALBIN}/vault.zip && unzip ${LOCALBIN}/vault.zip vault -d ${LOCALBIN}/ \
#     && rm -f ${LOCALBIN}/vault.zip && chmod 755 ${LOCALBIN}/vault

# curl -s -L https://s3.us-west-2.amazonaws.com/amazon-eks/${AWS_IAM_AUTHENTICATOR_VERSION}/bin/linux/amd64/aws-iam-authenticator \
#     -o ${LOCALBIN}/aws-iam-authenticator && chmod 755 ${LOCALBIN}/aws-iam-authenticator

curl -s -L https://github.com/99designs/aws-vault/releases/download/${AWS_VAULT_VERSION}/aws-vault-linux-amd64 \
    -o ${LOCALBIN}/aws-vault && chmod 755 ${LOCALBIN}/aws-vault

curl -s -L https://github.com/roboll/helmfile/releases/download/${HELMFILE_VERSION}/helmfile_linux_amd64  \
    -o ${LOCALBIN}/helmfile && chmod 755 ${LOCALBIN}/helmfile
