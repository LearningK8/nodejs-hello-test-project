FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm config set registry https://skimdb.npmjs.com/registry && npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
