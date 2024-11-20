from setuptools import setup, find_packages

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
)