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
$ docker pull mcslite/mcs-lite-app:latest
```

#### Step 2: Run

```
$ docker run --rm -p 3000:3000 mcslite/mcs-lite-app
```

#### Step 3: \[Option\] Push new images to the Dockerhub

```
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
