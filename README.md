# Bazi Bazar PS4 Host Collection

This repository contains a ready-to-serve static website. There is no dependency
installation or compilation step, and no `dist` directory is generated.

## Deploy with Coolify

Use the included Dockerfile:

1. Commit and push the deployment files to the branch Coolify deploys.
2. Set **Build Pack** to **Dockerfile**.
3. Set **Base Directory** to `/` and **Dockerfile Location** to `/Dockerfile`.
4. Set **Ports Exposes** to `80`.
5. Save and redeploy.

The image serves the root page and all four host directories using Nginx.
It does not require install/build commands or a publish-directory setting.

The error `COPY ... /app/dist .` followed by `"/app/dist": not found` means
Coolify is trying to publish compiled output that this project does not produce.
Switching to the Dockerfile build pack avoids that generated build stage.

## Run locally with Docker

```sh
docker build -t bb-ps4host .
docker run --rm -p 8080:80 bb-ps4host
```

Open `http://localhost:8080`.
