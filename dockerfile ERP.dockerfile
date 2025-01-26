# Use Python slim image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt and install dependencies

COPY config/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the remaining application files
COPY . .

EXPOSE 3000

# Set the default command
CMD ["python", "app.py"]
