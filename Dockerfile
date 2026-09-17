FROM docker.n8n.io/n8nio/n8n:latest

USER root

ENV N8N_PORT=8080
ENV N8N_LISTEN_ADDRESS=0.0.0.0
ENV N8N_PROTOCOL=http
ENV GENERIC_TIMEZONE=Asia/Jakarta
ENV TZ=Asia/Jakarta
ENV NODE_ENV=production

USER node

EXPOSE 8080

CMD ["start"]
