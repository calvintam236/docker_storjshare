# What is StorjShare?

StorjShare is the console miner provided by [Storj](https://github.com/Storj/storjshare-daemon).

# How to use this image

Create shared volume:

```console
$ docker volume create --name storjshare
```

Run to build config:

```console
$ docker run --rm -v storjshare:/storjshare calvintam236/storjshare create --storj YOUR_WALLET_ADDRESS --key YOUR_PRIVATE_KEY --storage /storjshare/YOUR_CONTAINER_NAME/ --size YOUR_SIZE --rpcport YOUR_PORT_1 --maxtunnels 2 --tunnelportmin YOUR_PORT_2 --tunnelportmax YOUR_PORT_3 --noedit -o /storjshare/YOUR_CONTAINER_NAME.json
```

Run in background:

```console
$ docker run -v storjshare:/storjshare -d --name YOUR_CONTAINER_NAME -p YOUR_PORT_1-YOUR_PORT_3:YOUR_PORT_1-YOUR_PORT_3 calvintam236/storjshare --entrypoint start /storjshare/YOUR_CONTAINER_NAME.json
```

Get `storjshare` options with:

```console
$ docker run --rm calvintam236/storjshare --help
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
