#!/bin/bash

# Docker
docker run --name worker -v /home/core/keys/:/etc/keys --volumes-from web --net=host -e CONCOURSE_TSA_HOST="10.42.0.188" -e CONCOURSE_TSA_PUBKEY="/etc/keys/tsa_key.pub" -e CONCOURSE_WORKER_KEY="/etc/keys/worker_key" --privileged=true --entrypoint /concourse-worker.sh -d overdrive3000/concourse

# No docker
concourse worker --work-dir /opt/concourse/worker/ --tsa-host 10.42.0.188 --tsa-public-key /home/core/keys/tsa_key.pub --tsa-worker-private-key /home/core/keys/worker_key
