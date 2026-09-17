FROM ghcr.io/n8n-io/n8n:latest

USER root

RUN mkdir -p /opt/back4app && \
    echo "n8n-back4app-build" > /opt/back4app/build.txt

ENV N8N_PORT=8080
ENV N8N_LISTEN_ADDRESS=0.0.0.0
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=Asia/Jakarta
ENV TZ=Asia/Jakarta

EXPOSE 8080

USER node
