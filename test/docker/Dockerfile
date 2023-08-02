# Multi-stage Docker build for tests

# Stage 1: Build the dockerterm_dockerterm image (if not already available)

FROM dockerterm_dockerterm as base

# No need to do anything here, as the image is already built in the previous step
# This stage will only run if the `dockerterm_dockerterm` image is not available locally

# Stage 2: Build the test container

FROM base

# Copy the test files to the container
COPY . /app

# Install dependencies (including pytest)
RUN pip install pytest pytest-docker-tools pytest-testinfra

# Set the working directory
WORKDIR /app

# Set the permissions to full access for the /app folder
RUN sudo chown -R 1000:1000 /app

# Switch to a non-root user
USER 1000

CMD ["python3", "-m", "pytest", "build_test.py"]
