#!/bin/sh
echo "https://dl-cdn.alpinelinux.org/alpine/edge/main" > /etc/apk/repositories
echo "https://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
apk update
apk add dive
