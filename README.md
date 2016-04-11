# yolomer
Dockerfile Source for Basic Archlinux Image with bower, gulp and yeoman ready to work with Polymer 1.1

## Requirements

- [Docker](https://www.docker.com/) 1.6+

## About

This image is ready to use and prepared to execute all commands inside the yolomer user in the image. All npm packages are installed inside the /home/yolomer/.npm-packages directory.

## How to use

Just execute te image, and then the npm, bower, yeoman or gulp commands inside the created container. Once your'e finished, just type **exit** to exit the container:

```bash
docker run --rm -ti -u yolomer:yolomer -w /home/yolomer/src -v `pwd`:/home/yolomer/src neowinx/yolomer
[yolomer@31513da23252 src]$ npm install && bower install
[yolomer@31513da23252 src]$ exit
```

## The lazy way (-_-)

If youre lazy like me, I recommend you to use [this](https://github.com/neowinx/yolomer/blob/master/yolomer) script.

Simply download it to the root of your polymer project using wget an then grant it execution permission.

If you're in a hurry, copy and paste this on your bash shell:

```bash
curl --help
if [ $? == 0 ]; then wget https://raw.githubusercontent.com/neowinx/yolomer/master/yolomer; else curl -sL https://raw.githubusercontent.com/neowinx/yolomer/master/yolomer >> yolomer; fi
chmod +x yolomer

```

## How to use

Just execute the yolomer script inside your project:

```bash
./yolomer
```

## What does the script?

The yolomer scritp it's just a script to abbreviate this:

```bash
docker run --rm -ti -u yolomer:yolomer -w /home/yolomer/src -v `pwd`:/home/yolomer/src -p 5000:5000 neowinx/yolomer
```

What this command does is mount the current working directory inside the container, bind the port 5000 and execute whatever it receives inside

### Examples:

#### Install npm and bower dependencies

```bash
[yolomer@532ca6607ea2 src]$ npm install && bower install
```

#### Execute gulp serve inside a polymer project and (acces it throught the 5000 port):

```bash
./yolomer
[yolomer@0a8a92a271a8 src]$ gulp serve
```

## FAQ

### It says `Bind for 0.0.0.0:5000 failed: port is already allocated`

Well the yolomer script binds the port 5000 of your computer for default. Make sure no other app is using it and then try again... or just modify the script.


# Have fun ;)

neowinx
