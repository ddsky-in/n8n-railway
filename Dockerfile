FROM n8nio/n8n:1.65.1

USER root
RUN apk add --no-cache --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community ffmpeg

USER node
CMD ["n8n"]
