# Node JS app with Docker

[Reference](https://docs.docker.com/language/nodejs/build-images)

## Requirements

- Node.js version 12.18 or later. (16.5.0)
- Docker running locally.
- An IDE or a text editor to edit files. We recommend using Visual Studio Code.


## CMD

- docker run

docker run -it --rm -d -v mongodb:/data/db -v mongodb_config:/data/configdb -p 27017:27017 --network mongodb --name mongodb mongo

docker run -it --rm -d --network mongodb --name rest-server -p 8000:8000 -e CONNECTIONSTRING=mongodb://mongodb:27017/yoda_notes node-docker

### Image

- build image
```
docker build --tag node-docker .
```

- tag image
```
docker tag node-docker:latest node-docker:v1.0.0
```

- list images
```
docker rmi node-docker:latest
```

### Container


- run 
```
docker run -d -p 80:80 image-name --name container-name
```

- list containers
```
docker ps -a
```

- start/stop/restart container
```
docker [start/stop/restart/rm] container-name
```

### Volume

- create

```bash
docker volume create volume-name
```


