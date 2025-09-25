# Start from the official n8n image
FROM n8nio/n8n:latest

# Switch to root to install ffmpeg
USER root

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*

# Switch back to the node user (important for n8n to run correctly)
USER node

# Start n8n
CMD ["n8n"]
