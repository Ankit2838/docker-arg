FROM alpine

WORKDIR /app

# Declare build-time ARG
ARG ENV

COPY . .

# Copy correct .env file based on ENV
COPY .env.$ENV .env

RUN chmod +x script.sh

CMD ["./script.sh"]