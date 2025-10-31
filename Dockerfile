# Use official lightweight Python image
FROM python:3.11-slim

# Set working dir
WORKDIR /usr/src/app

# Copy only requirements first to leverage Docker layer caching
COPY requirements.txt ./

# Install deps
RUN pip install --no-cache-dir -r requirements.txt

# Copy app source
COPY . .

# Expose port (informational)
EXPOSE 8080

# Default command
CMD ["python", "app.py"]
