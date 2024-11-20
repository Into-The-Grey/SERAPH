#!/bin/bash

# Create a virtual environment
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "Virtual environment created."
else
    echo "Virtual environment already exists."
fi

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
pip install --upgrade pip
pip install -r requirements.txt
echo "Dependencies installed."

# Run initial setup tasks (e.g., generate config files)
if [ ! -f ".env" ]; then
    echo "Generating .env file..."
    echo "# Environment variables" > .env
    echo "DEBUG=True" >> .env
    echo "LOG_LEVEL=INFO" >> .env
fi

echo "Environment setup complete."
