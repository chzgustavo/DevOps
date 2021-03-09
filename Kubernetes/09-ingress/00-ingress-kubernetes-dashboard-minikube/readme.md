# Ingress para dashboard-kubernetes minikube

1. Iniciar minikube: ***minikube start*** 
2. Iniciar dashboard en minikube: ***minikube dashboard***
3. Iniciar ingress en minikube: ***minikube addons enable ingress***
4. Ejecutar **kubectl apply -f dashboard-ingress.yaml**
5. Modificar /etc/hosts: agregado ip y url(***dashboard.com***)
