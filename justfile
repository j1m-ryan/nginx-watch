watch:
    docker compose up --build --watch
logs:
    while :; do docker compose logs -f; done
    
