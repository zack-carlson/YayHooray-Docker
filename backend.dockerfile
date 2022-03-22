# pull the Node.js Docker image
FROM node:5.12

# create the directory inside the container
WORKDIR /app

# run npm install in our local machine
RUN npm install

# copy the generated modules and all other files to the container
COPY . .

# our app is running on port 5000 within the container, so need to expose it
EXPOSE 3000

# the command that starts our app
CMD ["node", "api.js"]