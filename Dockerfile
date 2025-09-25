FROM n8nio/n8n:1.65.1

USER root
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Add ffmpeg explicitly to PATH
ENV PATH="/usr/bin:${PATH}"

USER node

CMD ["n8n"]
