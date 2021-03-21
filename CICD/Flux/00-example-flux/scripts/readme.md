# flux
 
- export FLUX_FORWARD_NAMESPACE=flux-system  // para que flux conozca en namespace esta el pod de flux

- fluxctl identity // genera clave publica que luego hay que copiar en repositorio github(se obtiene permisos de lectura y escritura en el repositorio)

- fluxctl sync //sincroniza cluster con repositorio github

- fluxctl release \
   --workload=name_ns:deployment/name_deploy \
   --update-image=chzgustavo/name_image:v0.0.9  // comando para actulizar la imagen de manera manual el cluster k8s

- fluxctl list-images -n app-a  // para ver las images del que utiliza namespace

- cuando se borra una tag de hub-docker se puede actualizar el cluster de manera automatica a la version anterior si esta definido las anotaciones en .yaml:

	```
	annotations:
	  fluxcd.io/automated: "true"
	  fluxcd.io/tag.test-argocd: semver:~v0.0
	```

- muestra instalacion de flux en cluster:  https://www.youtube.com/watch?v=KlUjaPZrz9c&ab_channel=Sngular

- repositorio guia: https://github.com/mmorejon/gitops-get-started
