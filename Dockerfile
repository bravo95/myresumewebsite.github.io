FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install nginx -y
RUN rm -rf /etc/nginx/sites-available/default
RUN unlink /etc/nginx/sites-enabled/default
COPY subha95.tk /etc/nginx/sites-available/
RUN ln -s /etc/nginx/sites-available/subha95.tk /etc/nginx/sites-enabled/
RUN mkdir -p /home/subhawebsite
COPY resume /home/subhawebsite/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]


