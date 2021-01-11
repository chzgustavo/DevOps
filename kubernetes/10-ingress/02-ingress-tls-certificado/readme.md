# Ingress: certificado TLS


- [ ] Crear certificado mediante las siguientes opciones
      * openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls-key.key -out tls-cert.crt 
      * ó openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=nginxsvc/O=nginxsvc"


- [ ] Decodificar certificado a base64:
      * cat crt-certificado.crt | base64
      * cat key-certificado.key | base64
      
- [ ] Copiar la salida en el campo ***tls.crt*** y ***tls.key*** del manifiesto declarativo 00-secrets.yaml

- [ ] Ejecutar todos los manifiestos declarativo: ***kubectl apply -f ./***
