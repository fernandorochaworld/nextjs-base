FROM node:20.13.1-alpine3.20
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY next.config.mjs ./next.config.mjs
COPY tsconfig.json ./tsconfig.json
COPY .eslintrc.json ./.eslintrc.json
COPY postcss.config.mjs ./postcss.config.mjs
COPY tailwind.config.ts ./tailwind.config.ts


# COPY src ./src
# COPY public ./public

CMD [ "npm", "run", "dev" ]