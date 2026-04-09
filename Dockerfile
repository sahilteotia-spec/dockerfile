FROM node:18-bullseye-slim

USER root

RUN apt-get update && apt-get install -y \
    libreoffice \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g n8n

USER node

ENTRYPOINT ["n8n"]
