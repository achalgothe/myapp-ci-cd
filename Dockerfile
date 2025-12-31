# Build stage
FROM node:18 AS build
WORKDIR /app

# Copy package.json from app folder
COPY app/package*.json ./
RUN npm install

# Copy full app source
COPY app/ ./
RUN npm run build

# Serve stage
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
