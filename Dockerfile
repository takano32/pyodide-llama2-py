FROM node:21

WORKDIR /app
COPY . .
RUN yarn

EXPOSE 8080
CMD ["npx", "http-server", "-a", "0.0.0.0", "-p", "8080", "--cors"]

