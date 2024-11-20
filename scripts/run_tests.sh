#!/bin/bash

# Activate the virtual environment
if [ -d "venv" ]; then
    source venv/bin/activate
else
    echo "Virtual environment not found. Please set it up."
    exit 1
fi

# Run tests
pytest tests/
