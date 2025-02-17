FROM n8nio/n8n:1.78.1

LABEL org.opencontainers.image.source="https://github.com/brunocascio/n8n-community-nodes"
LABEL org.opencontainers.image.description="Custom n8n Docker image with additional nodes"
LABEL org.opencontainers.image.licenses="MIT"

COPY nodes /home/node/.n8n/nodes

RUN find /home/node/.n8n/nodes -exec npm ci {} \;

ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/nodes