FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache gosu

RUN echo '#!/bin/sh' > /entrypoint.sh && \
    echo 'chown -R node:node /home/node/.n8n' >> /entrypoint.sh && \
    echo 'exec gosu node n8n' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
