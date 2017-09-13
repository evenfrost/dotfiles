#!/bin/bash

# get latest version
LATEST=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest)
VERSION=$(echo $LATEST | sed 's:.*/::')

echo Updating Docker Compose to $VERSION

# download
curl -L https://github.com/docker/compose/releases/download/$VERSION/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose version
