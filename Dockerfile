FROM php:7.1-alpine

VOLUME ["/root-dir"]

ENTRYPOINT [ "entrypoint.sh" ]
CMD ["--info"]

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN apk add --no-cache curl su-exec mysql-client

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN wp --info

RUN docker-php-ext-install mysqli pdo pdo_mysql



