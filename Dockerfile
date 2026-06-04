FROM n8nio/n8n:1.94.1

USER root

RUN apk add --no-cache \
    ffmpeg \
    fontconfig \
    wget \
    curl

RUN mkdir -p /usr/share/fonts/montserrat && \
    wget -q "https://github.com/google/fonts/raw/main/ofl/montserrat/Montserrat-ExtraBold.ttf" \
    -O /usr/share/fonts/montserrat/Montserrat-ExtraBold.ttf && \
    fc-cache -f -v

RUN mkdir -p /tmp/n8n-renders && chmod 777 /tmp/n8n-renders

USER node
