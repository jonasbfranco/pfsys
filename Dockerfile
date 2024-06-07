FROM node:latest

WORKDIR /app

COPY ./package.json .
COPY ./package-lock.json .
#COPY ./.env.production ./.env

#ENV PATH /app/node-modules/.bin:$PATH

#RUN npm install --silent --quiet --no-optional --no-fund --loglevel=error
#RUN npm ci --silent
RUN npm install 
#RUN npm build

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]