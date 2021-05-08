# This is a distroful distroless.Dockerfile, for making a comparison of memory usage etc
FROM node:14-alpine
WORKDIR /app
ADD yarn.lock .
ADD package.json .
RUN yarn
ADD src .
ADD tsconfig.json .
RUN yarn build
CMD ["node", "dist/index.js"]
