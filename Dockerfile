FROM node:14 AS build-env
WORKDIR /app

ADD yarn.lock .
ADD package.json .
RUN yarn

ADD src .
ADD tsconfig.json .
RUN yarn build

FROM gcr.io/distroless/nodejs:14
COPY --from=build-env /app /app
WORKDIR /app
CMD ["dist/index.js"]
