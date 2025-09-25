FROM n8nio/n8n:1.65.1

USER root
RUN apk update && apk add --no-cache ffmpeg
USER node

CMD ["n8n"]
