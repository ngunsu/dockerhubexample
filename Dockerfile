FROM ghcr.io/astral-sh/uv:python3.12-alpine
WORKDIR /app
COPY requirements.txt ./
RUN uv pip install --system -r requirements.txt
COPY . .
CMD ["python", "main.py"]
