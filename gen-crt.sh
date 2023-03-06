
FIRSTDOMAIN="victus"
CONFIG="./openssl_nginx.conf"

openssl req -x509 -nodes -days 365 -newkey rsa:2048  -config ${CONFIG} \
-subj "/C=RU/ST=Siberia/L=Tomsk/O=Home/emailAddress=andrey4d.dev@gmail.com/CN=${FIRSTDOMAIN}" \
-keyout nginx-selfsigned.key -out nginx-selfsigned.crt

