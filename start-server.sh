#!/bin/bash
# Start Hugo development server
# This script is useful for running in GitHub Codespaces

cd "$(dirname "$0")"

echo "Starting Hugo development server..."
echo "The site will be available at http://localhost:1313"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

hugo server --bind 0.0.0.0 --port 1313
