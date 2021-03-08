# argocd
Para el directorio 01-argocd-apps leer:

Pude funcionar de la siguientes maneras dos maneras:

1- Correr el siguiente .yaml:

apiVersion: argoproj.io/v1alpha1
kind: Application
metadata:
  name: test-apps
  namespace: argocd
spec:
  syncPolicy:
    automated:
      prune: false
      allowEmpty: false
      selfHeal: false
  source:
    path: kubernetes/02-argocd/01-argocd-apps
    repoURL: https://github.com/chzgustavo/DevOps.git
    targetRevision: HEAD
  destination:
    server: 'https://kubernetes.default.svc'
    namespace: default
  project: default
  
 
 2- Ejecutarlo desde CLI argocd:
 
 argocd app create apps-name \
    --dest-namespace argocd \
    --dest-server https://kubernetes.default.svc \
    --repo https://github.com/chzgustavo/DevOps.git \
    --path kubernetes/02-argocd/01-argocd-apps
    
 sincronizar app principal: argocd app sync apps 
 
 Para sincronizar todas las aplicaciones restantes: argocd app sync -l app.kubernetes.io/instance=apps-name

