FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y \
    ffmpeg \
    fontconfig \
    wget \
    curl \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/fonts/montserrat && \
    wget -q "https://github.com/google/fonts/raw/main/ofl/montserrat/Montserrat-ExtraBold.ttf" \
    -O /usr/share/fonts/montserrat/Montserrat-ExtraBold.ttf && \
    fc-cache -f -v

RUN mkdir -p /tmp/n8n-renders && chmod 777 /tmp/n8n-renders

USER node
