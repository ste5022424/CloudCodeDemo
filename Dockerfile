FROM node:lts
WORKDIR /app
COPY package* /app/
RUN npm install

FROM node:lts-alpine
WORKDIR /app
COPY --from=0 /app/ /app/
COPY . /app/
EXPOSE 3000
ENTRYPOINT [ "npm", "run", "start" ]