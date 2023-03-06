podman run -d --rm \
  --name registry \
  -v "${PWD}"/volumes/certs:/certs:z \
  -v "${PWD}"/volumes/registry:/var/lib/registry:z \
  -v "$(pwd)"/volumes/auth:/auth \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key \
  -e REGISTRY_AUTH=htpasswd \
  -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
  -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
  -p 5443:443 \
  registry:2
