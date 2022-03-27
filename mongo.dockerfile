FROM mongo
ADD ./tesladb.archive /docker-entrypoint-initdb.d/tesladb.archive


