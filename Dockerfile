FROM n8nio/n8n:1.94.1

USER root

RUN apk add --no-cache \
    ffmpeg \
    fontconfig \
    ttf-dejavu \
    wget \
    curl

RUN mkdir -p /tmp/n8n-renders && chmod 777 /tmp/n8n-renders

USER node
