# Use the official PHP image with PHP 5.6.40
FROM php:5.6.40-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli

# Enable Apache modules
RUN a2enmod rewrite

# Copy application files to the web root
COPY . /var/www/html/

# Copy custom php.ini configuration
# COPY php.ini /usr/local/etc/php/

# Set working directory
WORKDIR /var/www/html/

# Copy .htaccess file to enable redirection
# COPY .htaccess /var/www/html/.htaccess

# Expose port 80
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
