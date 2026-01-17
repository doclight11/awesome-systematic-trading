#!/bin/bash
set -e

# Railway sets PORT environment variable
# Default to 8080 if not set
PORT=${PORT:-8080}

echo "Starting MkDocs on 0.0.0.0:$PORT"
exec mkdocs serve -a 0.0.0.0:$PORT
