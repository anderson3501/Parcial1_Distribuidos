#ejercicio 1
FROM alpine:3.20

WORKDIR /app

COPY mensaje.txt ./

RUN apk update && \
    apk add --no-cache curl && \
    rm -rf /var/cache/apk/*

COPY . .

CMD ["cat", "mensaje.txt"]
