# Stage 1: Build the Nuxt app
FROM node:18

WORKDIR /app

COPY package.json package-lock.json* ./ 

RUN npm install

COPY . .

EXPOSE 4000

CMD ["npm", "run", "pro"]