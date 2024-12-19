# Use a slim Python image to reduce the image size
FROM python:3.10-slim



# Install Python dependencies (e.g., from requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Ensure the LEGEND binary has execute permissions
RUN chmod +x ./LEGEND

# Make sure Python 3 is used instead of Python 2
RUN ln -s /usr/bin/python3 /usr/bin/python

# Set an environment variable for the Telegram bot token
ENV TELEGRAM_TOKEN=<8073787222:AAGoYjRuggjcQ_LcrZ2ZI58yaDuDhHLhsas>

# Run the bot by starting the Python script and the binary
CMD ["sh", "-c", "python LEGEND.py"]
