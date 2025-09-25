# Use Debian-based n8n image
FROM n8nio/n8n:latest-debian

USER root

# Because default Debian base might be old/EOL, use archive repos
RUN sed -i 's|deb.debian.org|archive.debian.org|g' /etc/apt/sources.list \
  && sed -i '/security.debian.org/d' /etc/apt/sources.list \
  && apt-get update \
  && apt-get install -y ffmpeg curl wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER node

CMD ["n8n"]
