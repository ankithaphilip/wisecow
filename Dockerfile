# Use Ubuntu 20.04 as base image
FROM ubuntu:20.04

# Install necessary packages (cowsay, fortune, netcat)
RUN apt-get update \
    && apt-get install -y cowsay fortune netcat-openbsd

# Set the working directory inside the container
WORKDIR /app

# Copy the wisecow.sh script into the container
COPY wisecow.sh .

# Make wisecow.sh executable
RUN chmod +x wisecow.sh

# Expose the port that the application will listen on
EXPOSE 4499

# Specify the command to run when the container starts
CMD ["./wisecow.sh"]

