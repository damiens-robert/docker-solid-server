# solid-server 

Dockerfile that builds a docker image of the NodeJs Inrupt Pod solid-server

# Prerequesites

* Docker

# Instructions

## Building image

```
git clone THIS_REPOSITORY
cd DIRECTORY_OF_THIS_FILE
docker build -t NAME_OF_IMAGE .
```

## Make site directory

The site directory must contain the SSL certificates and the config.json file

## Run image

```
docker run -d -p 443:443 -v $PWD/site:/site damiensrobert/solid-server
```
