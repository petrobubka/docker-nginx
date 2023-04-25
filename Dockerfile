FROM nginx

COPY test.conf /etc/nginx/conf.d/test.conf

EXPOSE 80
