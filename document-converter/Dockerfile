FROM registry.gitlab.com/islandoftex/images/texlive:TL2020-2021-04-04-04-11@sha256:824430519e6708dcedea8c94b7c3d11f20a4acfbfd30ca7ec1c0317c33c880d4

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
