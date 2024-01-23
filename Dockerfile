# Use a base image with Ubuntu
FROM ubuntu:latest

# Set working directory inside the container
WORKDIR /app

# Copy the required files to the working directory
COPY LICENSE wisecow.sh ./

# Install necessary packages (fortune-mod and cowsay)
RUN apt-get update && \
    apt-get install fortune-mod cowsay -y && \
    rm -rf /var/lib/apt/lists/*

# Expose the port on which the service will run
EXPOSE 4499

# Set the entry point for the container
ENTRYPOINT ["./wisecow.sh"]