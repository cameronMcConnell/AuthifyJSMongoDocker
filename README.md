# AuthifyJSMongoDocker

AuthifyJSMongoDocker is a project designed to deploy a MongoDB database on a separate server from the AuthifyJS server. This repository contains the Docker configuration and initialization scripts necessary to set up and run the MongoDB instance.

## Project Overview

AuthifyJSMongoDocker provides a Dockerized MongoDB instance with a pre-configured database and collection. It is intended to be used in conjunction with the AuthifyJS application, which handles user authentication and other related functionalities.

## Getting Started

### Prerequisites

To run this project, you'll need:

- Docker installed on your machine.
- A server to deploy the MongoDB instance if running separately from your local environment.

### Installation

1. Clone this repository:
    ```sh
    git clone https://github.com/your-username/AuthifyJSMongoDocker.git
    cd AuthifyJSMongoDocker
    ```

2. Build and run the Docker container:
    ```sh
    docker build -t authifyjs-mongo .
    docker run -d -p <http-port>:27017 --name authifyjs-mongo -e DB_NAME="AuthifyJS" authifyjs-mongo
    ```

## Usage

Once the Docker container is running, it will expose MongoDB on port `27017`. You can connect to this database from your AuthifyJS application using the appropriate connection string, for example:

```sh
mongodb://<your-server-ip>:27017/AuthifyJS
```

## Dockerfile

```dockerfile
FROM mongo:5.0

COPY mongo-init.js /docker-entrypoint-initdb.d/

ENV DB_NAME=""

EXPOSE 27017

CMD ["mongod"]
```

## Initialization Script (`mongo-init.js`)

```javascript
db = db.getSiblingDB(process.env.DB_NAME);
db.createCollection('users');
```

## Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.