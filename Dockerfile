FROM debian:stable-slim
RUN apt update
RUN apt install -y nginx
WORKDIR /app
COPY ./resourses/nginx.conf /etc/nginx/nginx.conf
COPY ./content /app/content
CMD ["nginx", "-g", "daemon off;"]
