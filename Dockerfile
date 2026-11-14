FROM nginx:alpine

RUN printf 'server {\n\
    listen 3000;\n\
    server_name _;\n\
    location = /health { access_log off; default_type text/plain; return 200 "ok"; }\n\
    location / { root /usr/share/nginx/html; index index.html; }\n\
}\n' > /etc/nginx/conf.d/default.conf

EXPOSE 3000
