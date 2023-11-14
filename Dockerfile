FROM node:16.17.1
WORKDIR /app
COPY ./ .
RUN ls
RUN npm install
RUN npm install @angular/cli@11.2.4
RUN npm install npm@8.15.0
CMD ["npm","start"]

