FROM ubuntu
RUN apt-get update
RUN apt install nginx -y
ADD https://raw.githubusercontent.com/mudesouky/Docker/master/proxy/default.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
