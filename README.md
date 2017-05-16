# 镜像地址

anson2048/qrsboxcli

# 支持的 tag 标签，以及相关 Dockerfile 链接

- [`latest`, `0.1` (*Dockerfile*)](Dockerfile)

# 关于 qrsboxcli

七牛云存储同步上传客户端

# 镜像的使用

##　运行 shell 命令

```bash
# 当前目录上传到七牛
$ docker run -it --rm \
    -e ACCESSKEY=<七牛 ACCESSKEY> \
    -e SECRETKEY=<七牛 SECRETKEY> \
    -e BUCKET=<七牛 SECRETKEY> \
    -v $(pwd):/data \
    anson2048/qrsboxcli
```

## docker-compose

```yml
version: '2'

services:
  sync:
    build: .
    image: anson2048/qrsboxcli
    volumes:
    - ./data:/data
    environment:
    - ACCESSKEY=<七牛 ACCESSKEY>
    - SECRETKEY=<七牛 SECRETKEY>
    - BUCKET=<七牛 SECRETKEY>
    restart: unless-stopped
```

## 相关链接

- [qrsbox](https://developer.qiniu.com/kodo/tools/1299/qrsbox)
