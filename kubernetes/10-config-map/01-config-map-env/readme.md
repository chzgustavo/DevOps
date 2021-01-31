# Configmap

Ejemplo extraido de: https://www.alibabacloud.com/help/doc-detail/86556.htm

## Información de contexto

Puede usar un ConfigMap en un pod en los siguientes escenarios:
1. Utilice un ConfigMap para definir variables de entorno para un pod.
2. Utilice un ConfigMap para configurar los parámetros de la línea de comandos.
3. Utilice un ConfigMap en un volumen.

## Limites
Para usar un ConfigMap en un pod, asegúrese de que ConfigMap y el pod estén en el mismo clúster y espacio de nombres.

## Ejemplo

Este ejemplo utiliza un ConfigMap para definir variables de entorno para un pod.

### Notas:
- [ ] Al final el resultado de aplicar ***kubectl get pods*** status es: ***completed*** (El resultado muestra que el contenedor que se ejecutó en el pod se completó.)
- [ ] Campo ***restartPolicy: Never***. Si el contenedor de inicio de un Pod falla, el kubelet reinicia repetidamente ese contenedor de inicio hasta que tiene éxito. Sin embargo, si el Pod tiene un valor restartPolicyde Never y un contenedor de inicio falla durante el inicio de ese Pod, Kubernetes trata el Pod general como fallado.
