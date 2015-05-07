# docker-zookeeper

Builds Docker image for Zookeeper.

```bash
$ docker build -t <user>/zookeeper:3.4.6 .
```

## Configuration

If you wish to run Zookeeper in cluster mode then add `ZOOKEEPER_MYID`
environment variable when running the image:

```bash
$ docker run -p 2181:2181 -p 2888:2888 -p 3888:3888 \
  --name zookeeper <user>/zookeeper
```