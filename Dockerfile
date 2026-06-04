FROM n8nio/n8n:latest

USER root

# Install FFmpeg + fonts
RUN apk add --no-cache \
    ffmpeg \
    fontconfig \
    ttf-dejavu \
    ttf-liberation \
    wget \
    curl

# Install Montserrat font (for subtitles)
RUN mkdir -p /usr/share/fonts/montserrat && \
    wget -q "https://github.com/google/fonts/raw/main/ofl/montserrat/Montserrat-ExtraBold.ttf" \
    -O /usr/share/fonts/montserrat/Montserrat-ExtraBold.ttf && \
    fc-cache -f -v

# Writable temp dir
RUN mkdir -p /tmp/n8n-renders && chmod 777 /tmp/n8n-renders

USER node
