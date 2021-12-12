FROM nginx:1.19.1-alpine

ENV TZ=Asia/Chongqing PORT=80
RUN cp /usr/share/zoneinfo/${TZ} /etc/localtime

COPY nginx /
COPY www /usr/share/nginx/html/
RUN echo "$(date +'%Y%m%d%H%M')" > /usr/share/nginx/html/version.txt
HEALTHCHECK CMD wget --quiet --tries=1 --spider http://localhost:$PORT/version.txt || exit 1
