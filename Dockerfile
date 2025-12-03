FROM n8nio/n8n:latest

# Copy config.json into the n8n default config directory
COPY config.json /home/node/.n8n/config.json

# Copy .env file into the n8n config directory
COPY .env /home/node/.n8n/.env

# Ensure correct ownership (optional but recommended)
USER root
RUN chown -R node:node /home/node/.n8n
USER node
