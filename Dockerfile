FROM node:alpine

WORKDIR '/app'

COPY ./package.json ./
RUN npm install

COPY . .

EXPOSE 8000

RUN npm run ssr:build

CMD ["npm", "run", "ssr:start"]