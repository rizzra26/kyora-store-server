# Stage 1: Build the Nuxt app
FROM node:18

WORKDIR /app

RUN npm install -g nodemon env-cmd

COPY package.json package-lock.json* ./ 

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm", "run", "pro"]