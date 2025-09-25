FROM n8nio/n8n:1.65.1-debian

USER root
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

USER node
CMD ["n8n"]
