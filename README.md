# document-converter-actions

GitHub Actions for building LaTeX and Markdown documents using a Makefile.

## Usages

Used in our private repositories to build syllabi for the Systems Modelling course and various laboratory classes.

## Base image

The Docker image is built based on the configuration in `document-converter` and it is deployed on [`Docker Hub`](https://hub.docker.com/r/ftsrg/document-converter).

To build the image, navigate to the `document-converter` directory.

```bash
cd document-converter
docker build -t ftsrg/document-converter:2020 .
docker tag ftsrg/document-converter:2020 ftsrg/document-converter:latest
```

To deploy the image on Docker Hub, run:

```bash
docker push ftsrg/document-converter:2020
docker push ftsrg/document-converter:latest
```

## Local usage

To use this Docker image, create a `Makefile` that performs the required build steps. Then, test the image as follows;

```bash
docker run --rm -v `pwd`:"/github/workspace" ftsrg/document-converter [arguments]
```

The `[arguments]` are optional and are passed to the Makefile.

## Usage with GitHub Actions

Create a `.yml` workflow file in your repository under `.github/workflows/`.
For example, to run `make ci`, use the following configuration:

```yaml
jobs:
  job_name:
    runs-on: ...
    name: ...
    steps:
    - name: Build PDFs with the LaTeX engine in Docker
      uses: ftsrg/document-converter-actions@master
      with:
        makefile-arguments: ci
```
