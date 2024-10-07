# Use the official autobrr image as the base
FROM ghcr.io/autobrr/autobrr:latest

# Install npm and nodejs to run qBittRace
RUN apk update && apk add nodejs npm

# Install qBittRace globally via npm
RUN npm install -g qbit-race

# Run autobrr as the container’s default command
CMD ["autobrr"]
