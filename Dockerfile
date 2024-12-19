# Use a slim Python image to reduce the image size
FROM python:3.10-slim
# Ensure the LEGEND binary has execute permissions
RUN chmod +x ./LEGEND

