FROM docker.io/nginx

RUN  apt update && apt install -y nginx-extras
RUN  echo "root:$(openssl passwd 1111)" > /etc/nginx/.htpasswd

### Suggest you to use bind-mounts instead of putting files into the image.

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf



EXPOSE 80


 




