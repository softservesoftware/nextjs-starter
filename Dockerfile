FROM node:20
WORKDIR /usr/src/app/landing
# Installing dependencies 
COPY . .
RUN wget https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
# install dependencies
RUN npm install
# Building app
RUN npm run build
EXPOSE 3000
# Running the app
CMD [ "npm", "start" ]