# xrdp_docker

This is a docker file for using xrdp and lxde.

## Usage

Build a docker image.

```sh
docker build -t xrdp_test .
```

Run a docker container. Current directory is mounted to `/root/work`.

```sh
bash run_docker.sh
```

Start the xrdp service.

```sh
passwd
/etc/init.d/xrdp start
```

Connect to `IP:6080` from a remote pc using rdp client as root with the password set above.

Data is shared with host PC in `/share`.
`su user` when writing to the share directory.

