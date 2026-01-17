#!/usr/bin/env python3
import os
import subprocess
import sys

# Get PORT from environment, default to 8080
port = os.environ.get('PORT', '8080')

# Print for debugging
print(f"Starting MkDocs on 0.0.0.0:{port}")
sys.stdout.flush()

# Run mkdocs serve
cmd = ['mkdocs', 'serve', '-a', f'0.0.0.0:{port}']
subprocess.run(cmd)
