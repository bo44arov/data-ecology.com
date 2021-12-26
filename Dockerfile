FROM httpd:2.4.49

COPY /assets /usr/local/apache2/htdocs/assets
COPY /main /usr/local/apache2/htdocs/main

#COPY ./cert/ /usr/local/apache2/conf/
COPY ./apache/ssl_httpd.conf /usr/local/apache2/conf/httpd.conf
