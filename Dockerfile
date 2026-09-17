FROM node:22-alpine

USER root

RUN apk add --no-cache \
    tini \
    tzdata \
    libc6-compat

RUN npm install -g n8n

ENV N8N_PORT=8080
ENV N8N_LISTEN_ADDRESS=0.0.0.0
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=Asia/Jakarta
ENV TZ=Asia/Jakarta
ENV NODE_ENV=production

RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node

USER node

WORKDIR /home/node

EXPOSE 8080

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["n8n", "start"]
