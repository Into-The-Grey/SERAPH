#!/bin/bash

echo "Cleaning up temporary files..."

# Remove Python cache
find . -name "__pycache__" -exec rm -rf {} +
find . -name "*.pyc" -exec rm -rf {} +
find . -name "*.pyo" -exec rm -rf {} +

# Remove logs
if [ -d "logs" ]; then
    rm -rf logs/*
    echo "Logs cleaned."
fi

echo "Cleanup complete."
