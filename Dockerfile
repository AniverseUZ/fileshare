FROM python:3.10

# Update package list and install dependencies
RUN apt-get update && apt-get upgrade -y && apt-get install -y git

# Copy requirements.txt and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip install --upgrade pip && pip install --no-cache-dir -r /requirements.txt

# Set the working directory
WORKDIR /app

# Copy the rest of the application code
COPY . .

# Command to run the application
CMD ["python", "bot.py"]
