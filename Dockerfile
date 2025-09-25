FROM n8nio/n8n:1.65.1

USER root
RUN apk add --no-cache ffmpeg

# Make sure ffmpeg is available everywhere
ENV PATH="/usr/bin:${PATH}"

USER node
CMD ["n8n"]
