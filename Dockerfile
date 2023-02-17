FROM node:lts as runner
WORKDIR /node-express
ENV NODE_ENV production
COPY . .
RUN npm ci --only=production
EXPOSE 3000
CMD ["node", "app.js"]
