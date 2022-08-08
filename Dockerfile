FROM node:lts-alpine

RUN rm -rf /var/cache/apk/*

RUN npm i -g pnpm

WORKDIR /app

COPY packages /app/packages
COPY package.json /app/package.json
COPY pnpm-lock.yaml /app/pnpm-lock.yaml
COPY pnpm-workspace.yaml /app/pnpm-workspace.yaml
COPY tsconfig.json /app/tsconfig.json

RUN pnpm install -P --frozen-lockfile

CMD [ "node", "/app/packages/server/bin/polymine"]
