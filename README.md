<h1 align="center">Welcome to dockerterm! 👋 terminal bootstrap with docker</h1>

### 🤷🏼‍♂️ PREREQUISITE

- Docker v3
- Bash

### ➡️ CLONE

```shell
# ⚠️ IMPORTANT => CLONE THIS WAY :
git clone https://github.com/xotoscript/xotoscript-docker-dockerterm.git ./dockerterm
```

### 👾 RUN WITH DOCKER

```shell
# BUILD AND RUN FROM PROJECT FOLDER NAME
docker-compose build --no-cache && docker run -it --rm dockerterm-dockerterm
```

### 🚀 RUN WITH SHELL

```shell
# RUN SHELL ON A NEW INSTANCE OF UBUNTU
sh ./packages/setup.sh
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
