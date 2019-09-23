#!/bin/sh
API1=https://pricing.us-east-1.amazonaws.com
today=`date '+%d_%m_%Y__%H_%M_%S'`;
curl https://pricing.us-east-1.amazonaws.com/offers/v1.0/aws/AmazonRDS/current/region_index.json > new.json
cat new.json | grep "eu-west-1" >> $today.ec2.txt
awk "/offers/,/json/p" $today.ec2.txt
sed -i "s#currentVersionUrl#$API1#g" $today.ec2.txt