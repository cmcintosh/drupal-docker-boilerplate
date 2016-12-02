#!/bin/sh
mysqldump -u root -p -h $1 mp > ./sql/mp.sql
docker exec -i $2 mysql -uroot -proot meetingpackage < dump.sql
