FROM makisyu/texlive-2019

# https://www.redhat.com/sysadmin/tiny-containers
RUN dnf install -y the_silver_searcher pdfgrep pandoc \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
