FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
ENV PORT=10000
EXPOSE 10000
HEALTHCHECK --interval=30s --timeout=5s CMD wget -qO- http://localhost:10000/health || exit 1
CMD ["node","server/index.js"]