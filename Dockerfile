FROM debian:stable-slim
RUN apt update
RUN apt install -y nginx
CMD ["nginx", "-g", "daemon off;"]
