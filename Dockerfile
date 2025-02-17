FROM n8nio/n8n:1.78.1

COPY nodes /home/node/.n8n/nodes

RUN find /home/node/.n8n/nodes -exec npm ci {} \;

ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/nodes