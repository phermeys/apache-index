# Use an official Debian image
FROM debian:bullseye-slim

# Install necessary packages
RUN apt-get update && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

# Create a directory to mount the SMB share
RUN mkdir /mnt/smb

# Copy your Apache configuration files, HTML, PHP, or other site content
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf
#COPY index.html /var/www/html/

# Expose Apache port
EXPOSE 80

# Entry point script to mount the SMB share and start Apache
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
