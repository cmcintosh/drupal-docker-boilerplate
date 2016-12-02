#!/bin/sh

# how to use: from root of docker boilerplate,
# ./scripts/import-db SERVER_IP CONTAINER_NAME
mysqldump -u root -p -h $1 mp > ./sql/mp.sql
docker exec -i $2 mysql -uroot -proot meetingpackage < dump.sql
