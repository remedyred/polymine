# @snickbit/polymine

Minecraft local Docker auto discovery tool

## Docker Compose

```yaml
version: "3"
services:
  polymine:
    image: snickbit/polymine
    restart: unless-stopped
    ports:
      - "19132:19132/udp"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
```

## Docker Run

```bash
docker run -d --name polymine -p 19132:19132/udp snickbit/polymine --volume /var/run/docker.sock:/var/run/docker.sock
```

## License

MIT © Nicholas Lowe aka Snickbit
Copyright (c) 2022 Nicholas Lowe aka Snickbit
