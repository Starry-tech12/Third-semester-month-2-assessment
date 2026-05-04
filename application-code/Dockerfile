# Stage 1: Build
FROM golang:1.21-alpine AS builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o main .

# Stage 2: Run
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .
# Assuming the app needs to listen on 8080
EXPOSE 8080
CMD ["./main"]