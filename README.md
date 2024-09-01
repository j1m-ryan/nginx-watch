# nginx-watch
Docker Compose watch for NGINX


![Usage](readme-assets/output.gif)


## Requirements

- [Docker Compose](https://docs.docker.com/compose/)

## Setup 

- Run `make watch` in one terminal
- Run `make logs` in another. 

Upon making a change to `nginx.conf`, or to files in the `conf.d` directory, NGINX will restart. Docker Compose `watch` does not handle logs, so the `make logs` command will restart each time compose restarts.


## Usage 

1. add `cafe.example.com` to your `/etc/hosts` as follows

```
127.0.0.1       cafe.example.com
```

2. curl `cafe.example.com`

3. make a change to the response in `nginx/conf.d/default.conf`

4. curl `cafe.example.com` again and notice the change


