FROM ubuntu:22.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php

WORKDIR /var/www/html

COPY index.php /var/www/html

EXPOSE 7860

CMD ["php", "-S", "0.0.0.0:7860", "-t", "/var/www/html"]
