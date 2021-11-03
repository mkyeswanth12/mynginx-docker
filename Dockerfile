FROM docker.io/nginx

RUN  apt update && apt install -y nginx-extras apache2-utils
RUN  htpasswd -b -c /etc/nginx/.htpasswd root 1111


COPY ./nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf



EXPOSE 80


 




