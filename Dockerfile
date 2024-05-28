# Use the official PHP image with Apache
FROM php:7.4-apache

# Set working directory
WORKDIR /var/www/html

# Copy source files to the container
COPY . .

# Install dependencies
RUN docker-php-ext-install pdo pdo_mysql

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]

