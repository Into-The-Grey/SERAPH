from setuptools import setup, find_packages

setup(
    name="SERAPH",
    version="0.1.0",
    packages=find_packages(),
    install_requires=[
        "requests>=2.28.0",
        "python-dotenv>=0.20.0",
        "PyYAML>=6.0",
    ],
    author="Nicholas Acord",
    author_email="ncacordprotonmail.com",
    description="SERAPH project automation system",
    keywords="automation, task management",
    python_requires=">=3.12.x",
    url="https://github.com/Into-The-Grey/SERAPH",
    license="Private",
)
