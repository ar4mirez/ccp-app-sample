FROM node:16.9.0-alpine

ENV PORT=8080
ENV OPENWEATHERMAP_API_KEY=32279a2fd2ecc3d998d67b038a0e3d39

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE ${PORT}

CMD [ "node", "app.js" ]
