FROM python:3.14-slim

COPY --from=ghcr.io/astral-sh/uv:0.12.19 /uv /uvx /bin/

WORKDIR /app

ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy

# Install dependencies in a cacheable layer.
COPY pyproject.toml uv.lock README.md ./
RUN uv sync --locked --no-dev --no-install-project

# Copy and install the application.
COPY src ./src
RUN uv sync --locked --no-dev --no-editable

EXPOSE 8000

CMD ["/app/.venv/bin/uvicorn", "k8s_app_demo.main:app", "--host", "0.0.0.0", "--port", "8000"]