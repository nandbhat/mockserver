FROM node:alpine

WORKDIR /app


COPY package.json ./
RUN npm install
RUN npm install -g json-server


COPY ./ ./

EXPOSE 8080

ENTRYPOINT ["json-server", "--port", "8080", "--host", "0.0.0.0"]

CMD ["/app/db.json"] 



