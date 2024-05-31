# nginx-watch
docker compose watch for NGINX


## Requirements

- Docker
- Docker Compose
- Just

## Usage

Run `just watch` in one terminal and `just logs` in another. Upon making a change to `nginx.conf`, or to files in the `conf.d` directory, NGINX will restart. Docker Compose `watch` does not handle logs, so the `just logs` command will restart each time NGINX restarts.


