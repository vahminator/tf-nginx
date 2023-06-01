FROM nginx
COPY files/index.html /usr/share/nginx/html/index.html
COPY nginx/ /etc/nginx

EXPOSE 80