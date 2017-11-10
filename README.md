# About this Repo

This is the Git repo of the official Docker image for [distribution](https://registry.hub.docker.com/_/registry/).
See the Hub page for the full readme on how to use the Docker image and for information
regarding contributing and issues.


Quynh note:  This is just a clone from the official https://github.com/docker/distribution-library-image.  We need a built here to pick up the change that were made in s3/storage to support eu-west-2.  It wasn't in either latest (or 2.6) at the moment.  While there is no need to rebuild after the initial build, building instruction is provided here:
1.  Clone the repo
2.  Run ./build.sh
3.  Push to docker hub with veritonedev credential.
```
docker push veritone/vt-registry
```
