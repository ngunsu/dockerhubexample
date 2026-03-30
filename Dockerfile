FROM ghcr.io/astral-sh/uv:python3.12-alpine
WORKDIR /app
COPY pyproject.toml uv.lock ./
RUN uv sync --frozen --no-dev
COPY . .
CMD ["python", "main.py"]
