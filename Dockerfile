FROM node:20-alpine3.20

# Update Alpine packages to reduce vulnerabilities
RUN apk update && apk upgrade

WORKDIR /app

COPY package*.json ./
RUN npm install && npm audit fix

COPY . .

RUN npm run build

RUN npm prune --production

EXPOSE 3000

CMD ["node", "dist/main"]