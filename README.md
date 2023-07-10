<h1 align="center">Welcome to dockerterm! 👋</h1>
> 💨 a machine with docker

### 🤷🏼‍♂️ prerequisite
- Docker v3
- Bash

### clone
```shell
# ⚠️ important : clone this way :
git clone https://github.com/xotoscript/xotoscript-docker-dockerterm.git ./dockerterm
```

## run with docker
```shell
# build and run from project folder name
docker-compose build --no-cache && docker run -it --rm dockerterm-dockerterm
```

### push to docker
```shell
# login to docker hub
docker login
# push to docker hub
docker push {DOCKER_USERNAME}/dockerterm-dockerterm
# run machine from remote
cd /home docker run --rm -it -v $PWD:/xotosphere {DOCKER_USERNAME}/dockerterm-dockerterm:latest
```

### clean
```shell
# clean full docker
sh clean
```

