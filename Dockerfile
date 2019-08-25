FROM node:alpine

WORKDIR /app/
COPY app /app/

ENV PATH "$PATH:/app/node_modules/.bin/"
ENV NODE_PATH=/app/node_modules/

RUN yarn install --frozen-lockfile && yarn cache clean

WORKDIR /project/
ENTRYPOINT ["/app/node_modules/.bin/remark"]
