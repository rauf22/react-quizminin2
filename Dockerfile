FROM node:10-alpine
WORKDIR /app
COPY package*.json yarn.lock ./
RUN npm install yarn
COPY . .
EXPOSE 5000
RUN yarn build

RUN yarn global add serve
CMD serve -s build