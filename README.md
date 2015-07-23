# Yappa H2O webserver docker image

## Usage

Add the following to your docker-compose.yml file:

```YAML
h2o:
    image: yappabe/h2o
    links:
        - php
     #   - mailcatcher
    volumes_from:
        - app
    environment:
        DOCUMENT_ROOT: /var/www/app/web
        INDEX_FILE: app_dev.php
        PHP_FPM_SOCKET_PORT: 9000
        PHP_FPM_SOCKET_HOST: php
```