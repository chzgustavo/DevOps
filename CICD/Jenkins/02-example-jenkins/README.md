## Jenkins example

1. Crear credenciales de github. User y Token.
2. Crear credenciales de docker registry. User and password.
3. Instalar plugins en jenkins:  Kubernetes CLI. Link: https://plugins.jenkins.io/kubernetes-cli/
4. Crear credenciales para kubernetes de tipo file. Esta credencial es utilizada por el plugins. En el capo ***credentialsId***
5. Agregar nodo agente con etiqueta: ubuntu-18-04-5. Utilizando protocolo ssh.

Link trivy: https://aquasecurity.github.io/trivy/latest/usage/image/
Link para agregar nodo agente: https://www.youtube.com/watch?v=NlwR_FEsE0A&ab_channel=ProgrammingKnowledge