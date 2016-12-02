#!/bin/sh

# how to use: from root of docker boilerplate,
# ./scripts/import-db SERVER_IP CONTAINER_NAME
rm ./sql/mp.sql
mysqldump -u root -p -h $1 mp > ./sql/mp.sql
docker exec -i $2 mysql -uroot -proot -e"DROP DATABASE meetingpackage; CREATE DATABASE meetingpackage;"
docker exec -i $2 mysql -uroot -proot meetingpackage < ./sql/mp.sql
