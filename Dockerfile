FROM nginx:1.23.1-alpine

LABEL maintainer="AliuQ <lqadm@qq.com>"

COPY ./dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
