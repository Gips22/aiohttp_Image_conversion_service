FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy requirements file to the container
COPY requirements.txt .

# Install dependencies. --no-cache-dir: This option tells pip to not use a cache when installing packages.
# This is useful when you want to ensure that the packages are always installed from the latest version available in the package index.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Start the application
CMD ["python", "main.py"]