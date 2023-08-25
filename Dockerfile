# create layer
FROM node:lts

# change directory
WORKDIR /usr/src/app

# copy application files
COPY . /usr/src/app/

# install dependencies
RUN npm install
RUN npm run build

# open port
EXPOSE 3000

# install dependencies
CMD npm run dev
