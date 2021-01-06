#!/bin/bash
#Assuming AWS CLI is already installed, if not please uncomment below line 3 to install aws-cli on Ubuntu machine
#sudo snap install aws-cli --classic
#Exporting preconfigured AWS IAM account profile.
#export AWS_PROFILE=[profile name, which you configured earlier)
printf "Listing ALL Buckets\n"
aws s3 ls | awk '{if($NR >0) print $3}'
echo "=========================================="
my_array=($(aws s3 ls  --recursive --human-readable --summarize | awk '{ if($3 >0) print $3}'))
for s3 in "${my_array[@]}"
do
   location=($(aws s3api get-bucket-location --bucket $s3 --output text))
   echo $s3 "bucket region is" $location
   printf "Listing content of bucket %s\n" "$s3"
   aws s3 ls  s3://$s3 --recursive --human-readable --summarize
   echo "=========================================="
done
