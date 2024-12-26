# Base Python image
FROM python:3.9-slim-buster

# Set working directory
WORKDIR /abccorp

# Copy application code
COPY . .

# Install dependencies (if any)
RUN pip install flask

# Expose port
EXPOSE 8080

# Start the application
CMD ["python", "abccorp.py"]