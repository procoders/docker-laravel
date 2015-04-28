# Docker Laravel

Base enviroment for getting up and running with Docker and Laravel!

Thanks for [Alexander Trauzzi](http://profiles.google.com/atrauzzi) for work at creating [docker-laravel](https://github.com/atrauzzi/docker-laravel) project as I took as fundament for my own.

Please be sure to have at least Docker 1.5 installed when using this project.
If you have MacOs or Windows as main desktop OS, please install Boot2Docker first.

## Contents

If you'd like to learn more about this repository, browse it!  I've placed `readme.md` files at the root of all the directories
with explanations of what's going on.

## Installation via DockerHub

### Boot2Docker

[Download](http://boot2docker.io/) and install Boot2Docker. It's very simple.

### Build images an run instances

Clone repository by `git clone https://github.com/copeus/docker-laravel.git` to some directory and start into docker console init script.
 * For Mac `cd /Users/Workdir/...`
 * For Win `cd /Users/c/Workdir/...`

For getting working enviroment just run
```
./env-init
```
If you want to check, what containers are runed, just do:
```
docker ps
```

## Usage
### Enviroment

You are able to put you code to <your directory during init>/www/public.
But better just install Laravel via Composer with a help of console command, which described below.

Logs could be found at <your directory during init>/logs.

Access to Mysql could be found in evnviroments vairables by `print_r($_ENV)`

#### Host name and ip address
Also, you are able to find IP of your docker virtual macine by 
```
boot2docker ip
```

After that you are able to add a records with wanted hostname to etc/hosts, like
```
<ip_of_your_docker> www.mystartup.dev
```

### Console commands
Now u are able to use [Composer](https://getcomposer.org/) and install [Laraver 5](http://laravel.com/docs/master#install-laravel):
```
./composer global require "laravel/installer=~1.1"
```

Also you are able to use [Artisan CLI](http://laravel.com/docs/5.0/artisan):
```
./artisan
```

If you are sure, that u storng needed in shell via bash console:
```
./shell
```


## Manaul build (just for sysops)

To get started, all you have to do is clone this project to your local hard drive and run `images/build` followed by `images/develop`.

***Be mindful of your host environment.  If you are using Boot2Docker, then you will need to access your VM to see things
in action.  If you are running on Linux, everything should run as local services (make sure the ports aren't already claimed!).***


## Meta

This project is open source and I am highly interested in receiving suggestions and advice from the community.

Docker Laravel is created and maintained by Oleg Kopachovets.