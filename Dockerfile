# Use a Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the entire project to the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make the binary executable
RUN chmod +x ./LEGEND
# Set environment variables (if necessary)
ENV TELEGRAM_TOKEN=<8073787222:AAGoYjRuggjcQ_LcrZ2ZI58yaDuDhHLhsas>

# Command to run the bot
CMD ["python3", "RAJ.py"]
