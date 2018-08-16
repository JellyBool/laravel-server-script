#!/usr/bin/env bash
BACKUP_DATE=$(date +"%m.%d.%y-%H.%M.%S")

mysqldump --defaults-extra-file=/root/.my.cnf --single-transaction deploylaravel | pigz | aws s3 cp - s3://deploylaravel/$BACKUP_DATE/deploylaravel.sql.gz