FROM makisyu/texlive-2020

RUN dnf install -y the_silver_searcher pandoc ncurses-compat-libs

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
