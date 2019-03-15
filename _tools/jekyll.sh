#!/bin/sh

docker image build -t jekyll .
docker run --rm -v $(readlink -f ..):/work -p 0.0.0.0:80:4000/tcp jekyll