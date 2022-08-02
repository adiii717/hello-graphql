FROM node
WORKDIR /app
COPY . .
RUN npm install graphql express express-graphql
CMD [ "node", "index.js" ]
