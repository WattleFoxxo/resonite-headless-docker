FROM --platform=linux/arm64 ubuntu:latest

# Install dependencies
RUN apt update && apt install -y \
    git \
    curl \
    unzip \
    wget \
    jq \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Clone the repository
ARG REPO_URL
RUN git clone $REPO_URL /app

# Copy and configure environment
RUN cp .env.example .env

# Create config directory and Config.json
RUN mkdir -p config && echo '{}' > config/Config.json

# Copy docker-compose file if needed
COPY docker-compose.yml /app/

# Build the project
RUN curl -fsSL https://get.docker.com | sh && \
    apt install -y docker-compose && \
    docker compose build

# Start containers
CMD ["docker", "compose", "up", "-d"]
