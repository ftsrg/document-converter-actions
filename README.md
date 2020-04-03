# document-converter-actions

GitHub Actions supporting the Systems modelling course

## Usages

Used in our private repositories to build syllabi for the Systems Modelling classes, Critical Systems Architectures laboratories, etc.

## Base image

The Docker image is built based on the configuration in `document-converter` and it is deployed on [`Docker Hub`](https://hub.docker.com/r/ftsrg/document-converter).

To build the image, navigate to the `document-converter` directory.

```bash
cd document-converter
docker build -t ftsrg/document-converter .
```

To deploy the image on Docker Hub, run:

```bash
docker push ftsrg/document-converter
```


## Usage

To use this Docker image, create a `Makefile` that performs the required build steps. Then, run the image as follows;

```bash
docker run --rm -v `pwd`:"/github/workspace" ftsrg/document-converter
```
