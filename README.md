# nginx-watch
Docker Compose watch for NGINX


![Usage](readme-assets/output.gif)


## Requirements

- [Docker Compose](https://docs.docker.com/compose/)
- [Just](https://github.com/casey/just)

## Usage

Run `just watch` in one terminal and `just logs` in another. Upon making a change to `nginx.conf`, or to files in the `conf.d` directory, NGINX will restart. Docker Compose `watch` does not handle logs, so the `just logs` command will restart each time compose restarts.

## Why `just logs` is needed

Initially the logs will show up in the `just watch` command (it's `docker compose up --watch --build`), however after the first reload, all that you will see in this terminal is info relating to docker compose's `watch` feature, i.e what service was restarted or synced. The `just logs` command will relaunch `docker compose logs -f` every time it exits. Unfortunately This makes it difficult to close the just logs script. I close it by closing my terminal 😎.
