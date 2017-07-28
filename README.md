# mcs-lite-app-demo [![Github Tag][githubTag-badge]][githubTag] [![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)][dockerhub] [![Docker Build Statu](https://img.shields.io/docker/build/jrottenberg/ffmpeg.svg)][dockerhub]

> Quick demo for mcs-lite-app: [mcs-lite-app.now.sh](https://mcs-lite-app.now.sh)

## Deploy to Now.sh

> One click deploys to △ now

[![Deploy to now](https://deploy.now.sh/static/button.svg)](https://deploy.now.sh/?repo=https://github.com/MCS-Lite/mcs-lite-app-demo)

----

## Docker Support

#### Step 1: Build docker image

You can clone this reporitory and build the docker image locally:

```
$ git clone https://github.com/MCS-Lite/mcs-lite-app-demo.git
$ docker build -t mcslite/mcs-lite-app .
```

Or, directly pull the image from [Dockerhub](https://hub.docker.com/r/mcslite/mcs-lite-app/):

```
# Latest
$ docker pull mcslite/mcs-lite-app:latest

# Or, specific version tag
$ docker pull mcslite/mcs-lite-app:1.0.6
```

#### Step 2: Run

```
$ docker run --rm -it -p 3000:3000 mcslite/mcs-lite-app:1.0.6
```

#### Step 3: \[Option\] Push new images to the Dockerhub

```
# Recommend to use AUTOMATED BUILD
git tag 1.0.x
git push

# Manually
$ docker push mcslite/mcs-lite-app
```

## Deploy to Now.sh Manually

```
# Step 1: Deploy
$ now

# Step 2: Setup alias
$ now alias

# Step 3: Remove old deploy
$ now ls
$ now rm [url]
```

[githubTag-badge]: https://img.shields.io/github/tag/MCS-Lite/mcs-lite-app-demo.svg?style=flat-square
[githubTag]: https://github.com/MCS-Lite/mcs-lite-app-demo/releases
[dockerhub]: https://hub.docker.com/r/mcslite/mcs-lite-app/
