# pull the Node.js Docker image
FROM node:8-alpine


# create the directory inside the container
WORKDIR /app

#COPY TeslaAPI/package*.json ./

#RUN apt-get update || : && apt-get install python -y --force-yes
#RUN apt-get update || : && apt-get install -y --force-yes build-essential python
RUN apk --no-cache add --virtual builds-deps build-base python


# run npm install in our local machine

RUN npm install
# copy the generated modules and all other files to the container
COPY ./TeslaAPI .
#CMD ["npm install"]

# our app is running on port 5000 within the container, so need to expose it
EXPOSE 3000

# the command that starts our app
CMD ["node", "api.js"]


