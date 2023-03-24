FROM registry.gitlab.com/islandoftex/images/texlive:TL2022-2023-03-19-full@sha256:9d1f16e3c919e67267bb5a9796bee6f51c8265927f0bf99952241981a60c1d8d

RUN apt-get update && apt-get install -y \
    silversearcher-ag \
    pdfgrep \
    pandoc \
    ghostscript \
 && rm -rf /var/lib/apt/lists/*

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
