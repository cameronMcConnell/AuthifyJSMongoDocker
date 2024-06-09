FROM mongo:5.0

COPY mongo-init.js /docker-entrypoint-initdb.d/

EXPOSE 27017

CMD ["mongod"]