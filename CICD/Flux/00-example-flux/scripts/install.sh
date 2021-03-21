#!/usr/bin/env bash

# create namespace
kubectl apply -f namespaces/flux-system/namespace.yaml

# add repository flux
helm repo add fluxcd https://charts.fluxcd.io

# update Helm repositories
helm repo update

# install flux
helm upgrade flux fluxcd/flux --wait \
--install \
--namespace flux-system \
--version=1.3.0 \
--set git.url=git@github.com:chzgustavo/flux-get-started \
--set git.branch=main \
--set git.path=namespaces \
--set git.pollInterval=5m \
--set sync.interval=2m \
--set manifestGeneration=false \
--set registry.automationInterval=2m \
--set registry.includeImage="*/chzgustavo/*" \
--set syncGarbageCollection.enabled=true \
--set syncGarbageCollection.dry=true \
--set memcached.hostnameOverride=flux-memcached.flux-system

# install flux-helm-operator (para trabajar con los charts)
helm upgrade helm-operator fluxcd/helm-operator --wait \
--install \
--namespace flux-system \
--version=1.0.1 \
--set createCRD=false \
--set git.ssh.secretName=flux-git-deploy \
--set chartsSyncInterval=2m \
--set helm.versions=v3