FROM hub.easystack.io/library/nginx:v1

COPY . /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
