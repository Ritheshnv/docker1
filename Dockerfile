# Use an existing docker image as a base
FROM node:alpine

# root build container files
WORKDIR /usr/app
# Download and install dependency
COPY ./package.json ./
RUN npm install
COPY ./ ./
# Tell the image what to do when it starts as container
CMD ["npm", "start"]
