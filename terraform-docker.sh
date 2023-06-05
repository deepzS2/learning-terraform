#!/usr/bin/env bash

docker container run -it --name terraform -v $(pwd):/mnt/terraform --entrypoint /bin/sh hashicorp/terraform
