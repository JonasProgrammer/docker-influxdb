# docker-influxdb
Docker image extending the official influxdb with _FILE environment variables to be compatible with docker secrets

## Usage

This image behaves exactly as described at the [parent images' documentation](https://hub.docker.com/_/influxdb/). The only difference is that for all the `PASSWORD` environment variables there's a corresponding `PASSWORD_FILE` environment variable, which is used to determinate a file to read the parent's value from, should it not be set already.

