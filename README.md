# Sinatra S3 Uploader

## Requirements

- Docker
- Ruby

## Getting Started

DBのコンテナを起動する準備をする。env-exampleをコピーして、必要な情報(rootパスワードなど)を追記する

```shell
cp docker/db/env-example .env
```

DBのコンテナを起動

```shell
docker-compose up -d db
```

`backend/config/aws/s3.yml`に不足している情報を追加する(ACCESS KEYなど)

APIサーバ(backend)を起動する準備をする

```shell
cd backend
bundle install --path=vendor/bundle -j4
bundle exec rake db:migrate
```

起動する

```shell
bundle exec rackup
```

APIをローカルから叩く

```shell
curl http://localhost:9292/images -F file=@foobar.jpg -X POST
```
