# remo-actions

GitHub Actions supporting the Systems modelling course

## Usages

Used in our private repositories (<https://github.com/ftsrg/remo-jegyzet>, <https://github.com/ftsrg/remo-gyakorlatok>).

## Base image

The `remo` image is built based on the configuration in `ftsrg-remo` and it is deployed on [`Docker Hub`](https://hub.docker.com/r/ftsrg/remo).

To build and push the image, navigate to the `ftsrg-remo` directory.

```bash
cd ftsrg-remo
docker build -t ftsrg/remo .
docker push ftsrg/remo
```

## Usage

To use this Docker image, create a `Makefile` that performs the required build steps. Then, run the image as follows;

```bash
docker run --rm -v `pwd`:"/github/workspace" ftsrg/remo
```

## Deploying a new image

To deploy a new image on Docker Hub, use

```bash
docker push ftsrg/remo
```
