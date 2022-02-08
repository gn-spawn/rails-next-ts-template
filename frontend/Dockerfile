FROM node:16.13.1-alpine3.13

ENV APP /usr/src/app
WORKDIR ${APP}

COPY package.json yarn.lock ${APP}/
RUN yarn

COPY . ${APP}/

CMD [ "yarn", "dev" ]
