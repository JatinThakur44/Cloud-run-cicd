# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variable for PORT
ENV PORT=8080

# Expose the correct port
EXPOSE 8080

# Start the application
CMD ["python", "app.py"]
