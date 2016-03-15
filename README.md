# yolomer
Dockerfile Source for Basic Archlinux Image with bower, gulp and yeoman ready to work with Polymer 1.1

## Requirements

- Docker 1.6+

## About

This image is ready to use and prepared to execute all commands inside the yolomer user in the image. All npm packages are installed inside the /home/yolomer/.npm-packages directory.

Some use examples are listed below:

## How to use

Just execute the yolomer script inside your project and pass the npm / bower / gulp / grunt commands:

```bash
./yolomer npm install && bower install
```

## What does the script

The yolomer scritp it's just a script to abbreviate this

```bash
docker run --rm -ti -u yolomer:yolomer -w /home/yolomer/src -v `pwd`:/home/yolomer/src neowinx/yolomer npm install && bower install
```

What this command does is mount the current working directory inside the container and execute whatever it receives on it.

Some other examples could be:

### Mount a custom npm-packages directory

```bash
./yolomer -v [MY_CUSTOM_DIR]:/home/yolomer/.npm-install npm install && bower install
```

where **[MY_CUSTOM_DIR]** is the ABSOLUTE path (I repeat, **ABSOLUTE PATH**) to your custom directory in your OS. 

### Execute gulp serve inside a polymer project and acces it throught the 5000 port:

```bash
./yolomer -p 5000:5000 gulp serve
```
