FROM python:3.10-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application
COPY . .

# Copy Python runner script
COPY run_mkdocs.py /app/run_mkdocs.py
RUN chmod +x /app/run_mkdocs.py

# Expose port (Railway will set PORT env var)
EXPOSE 8080

# Start command - use Python to handle PORT variable
CMD ["python3", "/app/run_mkdocs.py"]
