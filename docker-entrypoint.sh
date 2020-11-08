#!/bin/sh

echo 'Generando Certificados...';

DOMAIN=$1

openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=$DOMAIN" -addext "subjectAltName=DNS:$DOMAIN" -newkey rsa:2048 -keyout /etc/ssl/certs/$DOMAIN.key -out /etc/ssl/certs/$DOMAIN.crt;