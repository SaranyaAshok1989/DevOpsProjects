#######################
#Author: Saranya
#Date:4 Dec 2023
#Version: v1

#This script is to track the list aws of resources


#######################

echo "Print the list of s3 buckets"
aws s3 ls >> resources

echo "Print the list of ec2 instances"
aws ec2 describe-instances| jq '.Reservations[].Instances[].InstanceId' >> resources

echo "Print the list of iam users"
aws iam list-users >> resources

echo "Print the list of lambda functions"
aws lambda list-functions >> resources

