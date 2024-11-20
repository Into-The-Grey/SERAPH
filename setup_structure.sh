#!/bin/bash

# Function to create a directory if it doesn't exist
create_dir() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created directory: $1"
    else
        echo "Directory already exists: $1"
    fi
}

# Create the base directories
create_dir "src"
create_dir "data"
create_dir "logs"
create_dir "docs"
create_dir "assets"
create_dir "tests"
create_dir "config"

# Create subdirectories under src
create_dir "src/core"
create_dir "src/modules/communication"
create_dir "src/modules/task_automation"
create_dir "src/modules/data_processing"
create_dir "docs/user_manual"
create_dir "docs/legal"
create_dir "config/core"
create_dir "config/modules/communication"
create_dir "config/modules/task_automation"
create_dir "config/modules/data_processing"
create_dir "tests/general_hardware_tests"

# Add .gitkeep files to empty directories
touch logs/.gitkeep data/.gitkeep assets/.gitkeep

echo "Directory structure setup complete."

# Create basic requirements.txt
echo "# Python dependencies
requests>=2.28.0
python-dotenv>=0.20.0
PyYAML>=6.0" >requirements.txt

# Create basic setup.py
echo "from setuptools import setup, find_packages

setup(
    name='seraph',
    version='0.1.0',
    packages=find_packages(),
    install_requires=[
        'requests>=2.28.0',
        'python-dotenv>=0.20.0',
        'PyYAML>=6.0',
    ],
    author='Your Name',
    author_email='your.email@example.com',
    description='SERAPH project automation system',
    keywords='automation, task management',
    python_requires='>=3.8',
    url='https://github.com/yourusername/seraph',
    license='Private',
)" >setup.py

# Create .env placeholders
echo "# Add your environment variables here" >.env

echo "Created requirements.txt, setup.py, and .env files."
