# Railway OpenHands Deployment

This fork deploys OpenHands Agent Canvas on Railway through the root `Dockerfile`.

Runtime:

- `@openhands/agent-canvas@1.1.0`
- `agent-server@1.29.0`
- `automation@1.0.0a12`

Required Railway variables:

- `LOCAL_BACKEND_API_KEY`: access key entered in the browser when opening the public Canvas URL.
- `OH_SECRET_KEY`: secret key used by OpenHands to encrypt settings.

Recommended Railway volume:

- Mount path: `/data`
- The image sets `HOME=/data` so Agent Canvas settings and local state survive restarts.

Start command:

```sh
agent-canvas --public --port "$PORT"
```

LLM credentials are configured in the Agent Canvas web UI settings page.
