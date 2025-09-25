FROM n8nio/n8n:1.65.1

USER root

# Install ffmpeg using apk (Alpine package manager)
RUN apk add --no-cache ffmpeg

USER node

CMD ["n8n"]
