# Frontend

Angular frontend application for the e-commerce platform.

## Features

* User registration
* User login
* Product catalog
* Order placement
* JWT authentication
* Nginx reverse proxy

## Tech Stack

* Angular 19
* Nginx
* Docker

## Run with Docker

### Build Image

```bash
docker build -t frontend:v1 .
```

### Run Container

```bash
docker run -d \
--name frontend-dev \
-p 4200:80 \
frontend:v1
```

## Access Application

```text
http://localhost:4200
```

## Reverse Proxy

The frontend uses Nginx as a reverse proxy for:

* Identity API
* Catalog API
* Order API

## Port

* 4200
