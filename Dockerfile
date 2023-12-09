# Use the official Python image from Docker Hub
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY . /app/.
# COPY diabetes2.csv /app/diabetes2.csv

# Install the required Python packages
RUN pip install pandas matplotlib seaborn ipython

# Define a directory for the analysis output
ENV OUTPUT_DIR=/app/analysis_output

# Expose the analysis output directory as a volume
VOLUME $OUTPUT_DIR

# Run your Python script
CMD ["python", "app.py"]