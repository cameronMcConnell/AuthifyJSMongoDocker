FROM mongo:5.0

COPY mongo-init.js /docker-entrypoint-initdb.d/

ENV DB_NAME=""

EXPOSE 27017

CMD ["mongod"]