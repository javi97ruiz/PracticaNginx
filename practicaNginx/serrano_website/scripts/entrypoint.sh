#!/bin/bash

# Habilitar los sitios si no existen los enlaces simbólicos
if [ ! -L /etc/nginx/sites-enabled/serrano.conf ]; then
  ln -s /etc/nginx/sites-available/serrano.conf /etc/nginx/sites-enabled/
fi

# Recargar la configuración de Nginx
nginx -s reload

# Iniciar Nginx en primer plano
nginx -g 'daemon off;'