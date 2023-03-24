# document-converter-actions

GitHub Actions for building LaTeX and Markdown documents using a Makefile.

## Usages

Used in our private repositories to build syllabi for the Systems Modelling course and various laboratory classes.

## Base image

The Docker image is built based on the configuration in `document-converter` and it is deployed on [`GitHub Container Registry`](https://ghcr.io/ftsrg/document-converter).

To build the image, navigate to the `document-converter` directory.

```bash
cd document-converter
docker build -t ghcr.io/ftsrg/document-converter:2022-v20230319 .
docker tag ghcr.io/ftsrg/document-converter:2022-v20230319 ghcr.io/ftsrg/document-converter:2022
docker tag ghcr.io/ftsrg/document-converter:2022 ghcr.io/ftsrg/document-converter:latest
```

To deploy the image on GitHub Container Registry, run:

```bash
echo $PAT | docker login ghcr.io -u <user> --password-stdin # PAT must have {read,write,delete}:packages scopes enabled
docker push ghcr.io/ftsrg/document-converter:2022-v20230319
docker push ghcr.io/ftsrg/document-converter:2022
docker push ghcr.io/ftsrg/document-converter:latest
```

## Local usage

To use this Docker image, create a `Makefile` that performs the required build steps. Then, test the image as follows;

```bash
docker run --rm -v `pwd`:"/github/workspace" ghcr.io/ftsrg/document-converter:2022 [arguments]
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
      uses: ghcr.io/ftsrg/document-converter-actions@2022
      with:
        makefile-arguments: ci
```
