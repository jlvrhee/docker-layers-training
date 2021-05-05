# Docker Layers Training
Below are some excercise that can be executed after the training. 

Note : These excersises have been tested to work with https://labs.play-with-docker.com/

**TIP : Within play-with-docker linux console screen you can paste text with CTRL-SHIFT-v**

# Preparations
1) Pull git project:
```
git clone https://github.com/jlvrhee/docker-layers-training.git
```

2) Install dive:
```
$ cd docker-layers-training
$ sh installdive.sh
```

# Exercise 1 - Create image with commands in 1 or multiple layers
1) Build the dockerfile with a RUN command per shell command, resulting in an image layer per shell command
```
$ docker build -f dockerfile1_1 -t dockerfile1_1 .
```
2) Build the dockerfile with 1 RUN command for a shell commands, resulting in 1 image layer for all shell commands
```
$ docker build -f dockerfile1_2 -t dockerfile1_2 .
```
3) Check total image size of dockerfile1_1 and dockerfile1_2 image
```
$ docker images | grep dockerfile1
```
4) Check size per layer for dockerfile1_1 and dockerfile1_2 image
```
$ docker history dockerfile1_1
$ docker history dockerfile1_2
```
5) Inspect contents of the layers for dockerfile1_1 and dockerfile1_2 image in more detail
```
$ dive dockerfile1_1
$ dive dockerfile1_2
```
Note : For key bindings within dive, see https://github.com/wagoodman/dive#keybindings

# Exercise 2 - Building times with python:alpine and python:slim
1) Remove all existing images
```
$ docker rmi dockerfile1_1 dockerfile1_2 python:alpine
```
2) Time how long the building takes of aiohttp package using python:alpine base image without removing compiler and apk cache
```
$ time docker build -f dockerfile2_1 -t dockerfile2_1 .
```
3) Time how long the building takes of aiohttp package using python:slim base image with removing compiler and apk cache
```
$ time docker build -f dockerfile2_2 -t dockerfile2_2 .
```
4) Time how long the building takes of aiohttp package using python:slim base image
```
$ time docker build -f dockerfile2_3 -t dockerfile2_3 .
```
5) Check total image size of dockerfile2_1, dockerfile2_2 and dockerfile2_3 image and explain differences
```
$ docker images | grep dockerfile2
```
