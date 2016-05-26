#!/bin/bash

docker run --name web -v /home/core/keys/:/var/lib/concourse/keys --net=host -e CONCOURSE_DATA_SOURCE="postgres://concourse:ci@10.42.0.188/concourse?sslmode=disable" -e CONCOURSE_URL=http://52.50.11.151:8080 --entrypoint /concourse-web.sh -d overdrive3000/concourse
