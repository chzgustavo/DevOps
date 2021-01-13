# Ingress: cert-manager
Experiencia realizada en minikube: debe habilitar ingress comando: ***minikube addons enable ingress***
versión de kubectl 1.20
 
- [ ] Aplicar manifiestos ***00-deployment.yaml*** , ***01-service.yaml***, ***02-cert-manager.yaml*** (valido para versiones Kubernetes 1.15+)


- [ ] Crear certificado emisor **issuer** especifica la autoridad que firmara el certificado. Aplicar ***03-issuer.yaml***
      
- [ ] Aplicar ingress:  ***04-ingress.yaml***
