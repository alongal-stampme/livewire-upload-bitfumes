FROM galalon/stamp-me-base-image

RUN a2enmod ssl

EXPOSE 80 8888 443

# Copy configuration files
COPY docker/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY docker/ports.conf /etc/apache2/ports.conf

# Copy phpunit shortcuts
COPY docker/install-f-shortcut.sh /usr/local/bin/f
RUN chmod +x /usr/local/bin/f

# Copy apache to run in the foreground script
COPY docker/httpd-foreground.sh /usr/local/bin/httpd-foreground
RUN chmod +x /usr/local/bin/httpd-foreground

# Copy create databases script
COPY docker/create-databases.sh /usr/local/bin/create-databases
RUN chmod +x /usr/local/bin/create-databases

# Copy start script
COPY docker/start.sh /usr/local/bin/start
RUN chmod +x /usr/local/bin/start

# Copy phpunit shortcuts
COPY docker/install-r-shortcut.sh /usr/local/bin/r
RUN chmod +x /usr/local/bin/r

# Copy phpunit shortcuts
COPY docker/install-create-project.sh /usr/local/bin/create-project
RUN chmod +x /usr/local/bin/create-project

WORKDIR /var/www/html/src

CMD ["/usr/local/bin/start"]