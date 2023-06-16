FROM debian:stable-slim
RUN apt update
RUN apt install -y nginx
WORKDIR /app
COPY nginx.conf /etc/nginx/nginx.conf
COPY test.html /app
CMD ["nginx", "-g", "daemon off;"]
