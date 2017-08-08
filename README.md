# mcs-lite-app-demo 

[![Travis][travis-badge]][travis]
[![Github Tag][githubTag-badge]][githubTag]
[![Docker Automated build][dockerhub-auto-badge]][dockerhub]
[![Docker Build Status][dockerhub-badge]][dockerhub]

[![Dependency Status][dependency-badge]][dependency]
[![devDependency Status][devDependency-badge]][devDependency]
[![peerDependency Status][peerDependency-badge]][peerDependency]
[![Greenkeeper badge][greenkeeper-badge]][greenkeeper]
[![prettier][prettier-badge]][prettier]
[![license][license-badge]][license]


> Quick demo for mcs-lite-app: [mcs-lite-app.now.sh](https://mcs-lite-app.now.sh)

> Note: For demonstration purposes **ONLY**. The websocket feature do not work on now.sh.

## Deploy to Now.sh

> One click deploys to △ now

[![Deploy to now](https://deploy.now.sh/static/button.svg)](https://deploy.now.sh/?repo=https://github.com/MCS-Lite/mcs-lite-app-demo&docker=true)


| **Step 1** | **Step 2** | **Step 3** |  **Step 4** |
|-----|-----|-----|-----|
|Click button |Add token and use Docker| Get your Url | Building |
| ![step1](./docs/1.png) | ![step2](./docs/2.png) | ![step3](./docs/3.png) | ![step4](./docs/4.png) |


----

## Docker Support

#### Step 1: Build docker image

You can clone this reporitory and build the docker image locally:

```
$ git clone https://github.com/MCS-Lite/mcs-lite-app-demo.git
$ docker build -t mcslite/mcs-lite-app .
```

Or, directly pull the image from [Dockerhub][dockerhub]:

```
# Latest
$ docker pull mcslite/mcs-lite-app:latest

# Or, specific version tag
$ docker pull mcslite/mcs-lite-app:1.0.7
```

#### Step 2: Run

```
$ docker run --rm -it -p 3000:3000 -p 8000:8000 mcslite/mcs-lite-app:1.0.7
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
$ now alias ls
$ now alias

# Step 3: Remove old deploy
$ now ls
$ now rm [url]

# Step 4: [option] scale
$ now scale mcs-lite-app.now.sh 1
```

## Requirements

-   node >= 8.2.1
-   npm >= 5.3.0
-   yarn >= 0.27.5


[travis-badge]: https://img.shields.io/travis/MCS-Lite/mcs-lite-app-demo/master.svg?style=flat-square
[travis]: https://travis-ci.org/MCS-Lite/mcs-lite-app-demo
[dependency-badge]: https://david-dm.org/MCS-Lite/mcs-lite-app-demo.svg?style=flat-square
[dependency]: https://david-dm.org/MCS-Lite/mcs-lite-app-demo
[devDependency-badge]: https://david-dm.org/MCS-Lite/mcs-lite-app-demo/dev-status.svg?style=flat-square
[devDependency]: https://david-dm.org/MCS-Lite/mcs-lite-app-demo#info=devDependencies
[peerDependency-badge]: https://david-dm.org/MCS-Lite/mcs-lite-app-demo/peer-status.svg?style=flat-square
[peerDependency]: https://david-dm.org/MCS-Lite/mcs-lite-app-demo#info=peerDependencies
[githubTag-badge]: https://img.shields.io/github/tag/MCS-Lite/mcs-lite-app-demo.svg?style=flat-square
[githubTag]: ./CHANGELOG.md
[license-badge]: https://img.shields.io/github/license/MCS-Lite/mcs-lite-app-demo.svg?style=flat-square
[license]: http://michaelhsu.mit-license.org/
[greenkeeper-badge]: https://badges.greenkeeper.io/MCS-Lite/mcs-lite-app-demo.svg
[greenkeeper]: https://greenkeeper.io/
[dockerhub-auto-badge]: https://img.shields.io/docker/automated/mcslite/mcs-lite-app.svg
[dockerhub-badge]: https://img.shields.io/docker/build/mcslite/mcs-lite-app.svg
[dockerhub]: https://hub.docker.com/r/mcslite/mcs-lite-app/
[prettier-badge]: https://img.shields.io/badge/styled_with-prettier-ff69b4.svg
[prettier]: https://github.com/prettier/prettier
