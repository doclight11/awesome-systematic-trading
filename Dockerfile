FROM python:3.10-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Expose port (Railway will set PORT env var)
EXPOSE 8080

# Start command
CMD mkdocs serve -a 0.0.0.0:${PORT:-8080}
