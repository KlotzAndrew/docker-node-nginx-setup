FROM nginx

RUN rm /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

#EXPOSE 80

CMD service nginx start

