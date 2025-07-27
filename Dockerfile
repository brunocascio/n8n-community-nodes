FROM n8nio/n8n:1.103.2

LABEL org.opencontainers.image.source="https://github.com/brunocascio/n8n-community-nodes"
LABEL org.opencontainers.image.description="Custom n8n Docker image with additional nodes"
LABEL org.opencontainers.image.licenses="MIT"

COPY --chown=node:node ./nodes /home/node/.n8n/nodes

RUN ls -d /home/node/.n8n/nodes/* | xargs -I {} sh -c 'cd {} && npm install --production'

ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/nodes
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true
