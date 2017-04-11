#!/bin/sh -eux

glide install -v
export CGO_ENABLED=0
export GOARCH=amd64
mkdir -p bin

GOOS=darwin  go build -o bin/packer-post-processor-teamcity.macos
GOOS=linux   go build -o bin/packer-post-processor-teamcity.linux
GOOS=windows go build -o bin/packer-post-processor-teamcity.exe
