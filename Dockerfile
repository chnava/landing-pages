# Usar Nginx como servidor web ligero
FROM nginx:alpine

# Copiar los archivos del proyecto al contenedor
COPY index.html /usr/share/nginx/html/
COPY Foto_CAGN.png /usr/share/nginx/html/

# Exponer el puerto 80 para el tráfico web
EXPOSE 80

# Iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
