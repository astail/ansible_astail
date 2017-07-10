#!/bin/sh
 
delete_date=`date +%Y.%m.%d -d '8 days ago'`
curl -XDELETE "localhost:9200/logstash-${delete_date}"
