FROM node:14-alpine
WORKDIR /app
COPY . .
RUN npm install
ENV AMQP_URL="amqp://rabbitmq:5672"
EXPOSE 3000
CMD [ "node", "index.js" ]