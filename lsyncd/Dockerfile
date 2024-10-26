# Use an Alpine Linux base image
FROM alpine:latest

# Install lsyncd and required dependencies
RUN apk add --no-cache lsyncd rsync lua openssh

# Create the log directory
RUN mkdir -p /var/log/lsyncd

# Copy the lsyncd config file into the container
COPY lsyncd.conf.lua /etc/lsyncd.conf.lua

# Command to run lsyncd with the custom configuration
CMD ["lsyncd", "-nodaemon", "/etc/lsyncd.conf.lua"]
