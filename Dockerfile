FROM python:3.12-slim

# Install system dependencies
RUN apt-get update && apt-get install -y pandoc git dos2unix

# Set working directory
WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install the kernel
RUN python -m ipykernel install --name=muse_kernel

# Copy the entire project
COPY . .

# Convert line endings
RUN dos2unix scripts/*.sh

# Set default command
CMD ["bash"]
