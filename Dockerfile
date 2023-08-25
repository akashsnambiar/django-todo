# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make the script executable
RUN chmod +x manage.py

# Define environment variable for Django settings module
ENV DJANGO_SETTINGS_MODULE=todoApp.settings

# Run the command
CMD ["./manage.py"]
