# n8n + FFmpeg Docker Image for Railway

This repo builds a custom n8n Docker image with **ffmpeg**, **curl**, and **wget** installed.

## 💡 Usage on Railway

1. Link this GitHub repo to your Railway project.
2. Ensure service(s) (Primary / Worker) use Dockerfile builds.
3. Railway will detect `Dockerfile` (due to `railway.toml`).
4. Deploy — build logs should show ffmpeg installation.
5. In n8n, use an **Execute Command** node to test:
