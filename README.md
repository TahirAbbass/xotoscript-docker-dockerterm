<h1 align="center">Welcome to dockerterm! 👋 terminal bootstrap with docker</h1>

### 🤷🏼‍♂️ PREREQUISITE

- Docker v3
- Bash

### ➡️ CLONE

```shell
# ⚠️ IMPORTANT => CLONE THIS WAY :
git clone https://github.com/xotoscript/xotoscript-docker-dockerterm.git ./dockerterm
```

### 👾 BUILD AND RUN WITH DOCKER

```shell
# BUILD AND RUN FROM PROJECT FOLDER NAME
sudo docker-compose build --no-cache
sudo docker run -it --rm dockerterm_dockerterm
```

### 👾 RUN WITH DOCKER AND MOUNT LOCAL ENVIROMENT INTO DOCKER

```shell
# BUILD AND RUN FROM PROJECT FOLDER NAME
sudo docker run -it -v ~:/home/xotosphere/localenv --rm dockerterm_dockerterm
```

### 🚀 RUN WITH SHELL

```shell
# RUN SHELL ON A NEW INSTANCE OF UBUNTU
sh ./packages/script/setup.sh
```

### ☁️ PUSH TO DOCKER

```shell
# LOGIN TO DOCKER HUB
docker login

# PUSH TO DOCKER HUB
docker push {DOCKER_USERNAME}/dockerterm-dockerterm

# RUN MACHINE FROM REMOTE
cd /home docker run --rm -it -v $PWD:/{USERNAME} {DOCKER_USERNAME}/dockerterm-dockerterm:latest
```

### 🧽 CLEAN

```shell
# CLEAN FULL DOCKER
sh clean
```

### 🧽 test

```shell
sudo docker-compose build
sudo docker-compose -f test/docker-compose.yml build
sudo docker-compose -f test/docker-compose.yml run --rm testserv
```
