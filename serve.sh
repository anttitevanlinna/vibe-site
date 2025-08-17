#!/bin/bash
# Simple server script for vibe-site demo

echo "Starting vibe-site server on http://localhost:3000"
echo "Press Ctrl+C to stop the server"
echo ""

# Try Python 3 first (most common on Mac)
if command -v python3 &> /dev/null; then
    python3 -m http.server 3000
# Fall back to Python 2 if needed
elif command -v python &> /dev/null; then
    python -m SimpleHTTPServer 3000
else
    echo "Python not found. Please install Python or use another server method."
fi