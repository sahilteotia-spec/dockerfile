FROM n8nio/n8n:latest

USER root

RUN echo '#!/bin/sh' > /entrypoint.sh && \
    echo 'chown -R node:node /home/node/.n8n' >> /entrypoint.sh && \
    echo 'exec su-exec node n8n' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
