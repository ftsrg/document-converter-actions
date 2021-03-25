FROM registry.gitlab.com/islandoftex/images/texlive:TL2020-2021-03-21-04-14@sha256:f2b367a2548683eaf15a3dcd5eac50e4104e42140b9337d66a9f9950579d4c77

RUN apt-get update && apt-get install -y \
    silversearcher-ag \
    pandoc \
 && rm -rf /var/lib/apt/lists/*

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
