# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependencies and install
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files to container
COPY . .

# Expose Flask port
EXPOSE 8080

# Run Flask app
CMD ["python", "app.py"]