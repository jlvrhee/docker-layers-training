# Docker Layers Training
Below are some excercise that can be executed after the training. 

Note : These excersises have been tested to work with https://labs.play-with-docker.com/

**TIP : With play-with-docker linux console screen you can paste text with CTRL-SHIFT-v**

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

# Excersise 1 - Create image with commands in 1 or multiple layers
1) Build the dockerfile with a RUN command per shell command
```
$ docker build -f dockerfile1_1 -t dockerfile1_1 .
```
2) Build the dockerfile with 1 RUN command for a shell commands
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
