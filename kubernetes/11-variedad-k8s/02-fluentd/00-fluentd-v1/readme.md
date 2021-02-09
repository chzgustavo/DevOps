# Fluentd EKF (Elasticsearch, Kibana, and Fluentd)

EFK es un conjunto de herramientas que combina Elasticsearch, Fluentd y Kibana para administrar registros. Fluentd recopilará los registros y los enviará a Elasticsearch. Este último recibirá los registros y los guardará en su base de datos. Kibana obtendrá los registros de Elasticsearch y los mostrará en una aplicación web agradable. Los tres componentes están disponibles como binarios o como contenedores Docker. (link: https://techcommunity.microsoft.com/t5/core-infrastructure-and-security/getting-started-with-logging-using-efk-on-kubernetes/ba-p/1333050)

Pasos para correr EKF:
- [ ] Crear namespace: ***kubectl create namespace logging***
- [ ] Elasticsearch: ***kubectl create -f 00-elastic.yaml -n logging***
- [ ] Kibana: ***kubectl create -f 01-kibana.yaml -n logging***. Pruebe esto en su navegador: http://IP_NODE:KIBANA_EXPOSED_PORT
- [ ] Fluentd: ***kubectl create -f 02-fluentd-rbac.yaml*** y ***kubectl create -f 03-fluentd-daemonset.yaml***. Al verificar los logs de fluentd debe verse lo siguiente:
***kubectl logs fluentd-xxxxx -n kube-system***
    ```
    Connection opened to Elasticsearch cluster =>
    {:host=>"elasticsearch.logging", :port=>9200,       :scheme=>"http"}
   ```
Para más detalles consultar: https://mherman.org/blog/logging-in-kubernetes-with-elasticsearch-Kibana-fluentd/
