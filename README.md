# What is StorjShare?

StorjShare is the console miner provided by [Storj](https://github.com/Storj/storjshare-daemon).

# How to use this image

Create shared volume:

```console
$ docker volume create --name storjshare
```

Run to build config:

```console
$ docker run --rm -v storjshare:/storjshare calvintam236/storjshare create --storj YOUR_WALLET_ADDRESS --key YOUR_PRIVATE_KEY --storage /storjshare --size YOUR_SPACE_SIZE -o /storjshare/YOUR_CONTAINER_NAME.json --noedit
```

Run in background:

```console
$ docker run -v storjshare:/storjshare -d calvintam236/storjshare start --config /storjshare/YOUR_CONTAINER_NAME.json
```

Get storjshare options with:

```console
$ docker run --rm calvintam236/storjshare --help
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
