This repository refers to https://github.com/giandonatoinverso/wls-backend-server and contains the sample data file that is loaded into the database used by the backend

# Setup
You can use the example docker compose file that creates the complete stack

```
git clone <this_repository>
docker compose build --no-cache && docker compose -p wslStack up -d
```

# Development

```
task publish-docker
```
