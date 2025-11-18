FROM alpine:latest

ADD https://github.com/pocketbase/pocketbase/releases/download/v0.22.17/pocketbase_0.22.17_linux_amd64.zip /pocketbase.zip
RUN unzip /pocketbase.zip -d /app && chmod +x /app/pocketbase

WORKDIR /app
EXPOSE 8080

CMD ["/app/pocketbase", "serve", "--http=0.0.0.0:8080", "--dir=/pb_data"]
