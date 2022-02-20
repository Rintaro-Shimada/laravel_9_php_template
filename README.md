# laravel_9_php_template
laravel docker 開発環境のテンプレート  
##  バージョン情報
~~~
nginx:1.21
PHP 8.1
mysql 8.0
node.js 16.14.0
~~~

```shell
docker-compose build

docker-compose run --rm app sh -c 'composer create-project laravel/laravel my-laravel-app'

docker-compose up -d

docker exec -it php-fpm bash
```

php-fpm への入り方

```shell
docker exec -it laravel_php-fpm bash
```

node への入り方

```shell
docker exec -it laravel_node bash
```