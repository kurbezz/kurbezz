# syntax = docker/dockerfile:1

FROM node:lts-slim AS base

ARG PORT=3000

ENV NODE_ENV=production

WORKDIR /src

# Build
FROM base AS build

COPY --link ./src/package*.json ./
RUN npm install --production=false

COPY --link ./src .

RUN npm run build
RUN npm prune

# Run
FROM base

ENV PORT=$PORT

COPY --from=build /src/.output /src/.output

CMD [ "node", ".output/server/index.mjs" ]
