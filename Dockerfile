# Use official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy application files
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose Flask default port
EXPOSE 8080

# Set environment variable for Flask
ENV FLASK_APP=app.py
ENV PYTHONUNBUFFERED=1

# Start Flask app
CMD ["python", "app.py"]
