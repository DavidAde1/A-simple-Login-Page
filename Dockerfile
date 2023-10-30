FROM alpine

RUN apk update && apk upgrade && apk add --no-cache nginx

RUN rm /etc/nginx/http.d/default.conf
RUN rm /etc/nginx/nginx.conf

RUN mkdir -p /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

#Makes the configuration directory
RUN mkdir -p /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/
COPY myserver.conf /etc/nginx/conf.d/

# Expose port 8080 for HTTP traffic
EXPOSE 80

# Start Nginx with the "daemon off" option
CMD ["nginx", "-g", "daemon off;"]