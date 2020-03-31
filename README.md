# remo-actions

GitHub Actions supporting the Systems modelling course

## Usages

Used in our private repositories (<https://github.com/ftsrg/remo-jegyzet>, <https://github.com/ftsrg/remo-gyakorlatok>).

## Base image

The `remo` image is built based on the configuration in `ftsrg-remo` and it is deployed on [`Docker Hub`](https://hub.docker.com/r/ftsrg/remo).

To build and push the image:

```console
cd ftsrg-remo
docker build -t ftsrg/remo .
docker push ftsrg/remo
```
