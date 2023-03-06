
USERNAME="testuser"
PASSWORD="password"

podman run -i --rm   --entrypoint htpasswd  docker.io/httpd:2 -Bbn ${USERNAME} ${PASSWORD} > ${PWD}/volumes/auth/htpasswd
