FROM mongo
#ADD ./tesladb.archive /docker-entrypoint-initdb.d/tesladb.archive
ADD ./tesladb /docker-entrypoint-initdb.d/
RUN mongorestore -d ./docker-entrypoint-initdb.d/tesladb 

