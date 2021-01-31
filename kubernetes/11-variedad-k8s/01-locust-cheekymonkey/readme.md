# Locust
Una herramienta de prueba de carga de código abierto.
(simular carga en servidores)
Página web para instalar para instalar en kubernetes: https://github.com/deliveryhero/helm-charts/tree/master/stable/locust


Pasos para instalar:
* Crear namespace, aplicar **kubectl apply -f 00-namespace.yaml.**
* Añade el repo público de charts de Delivery Hero: **helm repo add deliveryhero https://charts.deliveryhero.io/**
* Instalar charts con el nombre de la versión locust-test: **helm install locust-test  deliveryhero/locust -n locust** 
* Aplicar port-fordward: **kubectl --namespace locust port-forward service/locust-test 8089:8089**


# Cheeky Monkey
Juego escrito en python que se utiliza para matar pod. Git oficial: https://github.com/richstokes/cheekymonkey

Recomendable instalar ***pithon3*** y ***pip3*** para correr el juego.

Importante excluir los namespace en donde no se desee matar pods por ejemplo: ***python3 cheekymonkey.py --exclude locust kube-system kube-public kube-node-lease***
