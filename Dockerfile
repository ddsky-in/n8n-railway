FROM n8nio/n8n:latest

USER root

# Install ffmpeg, python3, pip, then yt-dlp
RUN apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install --no-cache-dir yt-dlp

USER node
