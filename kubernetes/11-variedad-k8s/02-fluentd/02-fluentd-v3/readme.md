# Fluentd EKF (Elasticsearch, Kibana, and Fluentd)

1. Cambiar contexto a kube-system
```bash
kubectl config set-context --current --namespace=kube-system
```
2. Deploy Elasticsearch
```bash
kubectl apply -f 00-elastisearch.yaml
```
3. Deploy Kibana
```bash
kubectl apply -f 01-kibana.yaml
```
4. Deploy Fluentd DaemonSet
```bash
kubectl apply -f 02-fluentd.yaml
```
Pagina web: https://medium.com/@jainishshah17/efk-stack-on-kubernetes-af8a95d7c3a0
