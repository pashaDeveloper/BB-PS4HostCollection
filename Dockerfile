FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY 13xxgr/ /usr/share/nginx/html/13xxgr/
COPY 505n672/ /usr/share/nginx/html/505n672/
COPY 900f/ /usr/share/nginx/html/900f/
COPY g2all/ /usr/share/nginx/html/g2all/

EXPOSE 80
