# Bash-Script-to-List-All-S3-Buckets

A  Simple BASH script that lists all S3 Buckets of all regions out of S3 using the credentials that are configured # for your AWS command line. Requires you to have configured the AWS command line tool (AWS CLI) with your credentials.

Requirements: 

1. aws-cli installed on your machine 
2. Configure your aws S3 IAM access with the following 
aws configure --profile [Name of your aws cli profile]
3. export AWS_PROFILE= [Profile name you created at step 2]


Usage: 

after meeting the above requirements, you can run the list-all-s3.sh 

it will show all available buckets across the regions and objects of the buckets
