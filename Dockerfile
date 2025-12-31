FROM node:18

WORKDIR /app
COPY . .

RUN npm install

EXPOSE 3000
ENV HOST=0.0.0.0

CMD ["npm", "start"]
