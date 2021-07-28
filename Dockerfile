FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY  /dist/Angular11Crud/  /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]

