FROM node:22-bookworm-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends ca-certificates curl git python3 python3-venv build-essential \
  && rm -rf /var/lib/apt/lists/*

RUN npm install -g @openhands/agent-canvas@1.1.0

RUN curl -LsSf https://astral.sh/uv/install.sh | env UV_INSTALL_DIR=/usr/local/bin sh

ENV HOME=/data
WORKDIR /workspace

COPY start-openhands.sh /usr/local/bin/start-openhands
RUN chmod +x /usr/local/bin/start-openhands

EXPOSE 8000
CMD ["start-openhands"]
