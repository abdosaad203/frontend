# Build Stage
FROM node:22-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Runtime Stage
FROM nginx:1.27-alpine

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=build /app/dist/ecommerce-frontend/browser /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf


EXPOSE 80