# Use the official Python image as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /bme680

# Copy the local requirements.txt file to the container
COPY requirements.txt .

# Install any dependencies
RUN pip install -r requirements.txt

# Copy the local code to the container
COPY . .

# Command to run the Python script
CMD ["python", "src/main.py"]