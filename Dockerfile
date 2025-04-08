FROM alpine

WORKDIR /app

# Declare build-time ARG
ARG ENV

COPY . .

# Copy correct .env file based on ENV
COPY .env.$ENV .env

RUN chmod +x app.sh

CMD ["./app.sh"]