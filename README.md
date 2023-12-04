# DevOpsProjects
Learning and experimenting Dev-ops Projects

Task 1 - Shell script to Track aws resources and configure cronjob

	- Create aws account
	- Create a linux OS instance in AWS
	- Login into Ec2 using 
		○ aws ssh -i test2.pem ubuntu@3.14.3.220
	- In the Linux instance, install aws cli using
		○ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
		○ sudo apt install unzip
		○ unzip awscliv2.zip
		○ sudo apt install unzip
		○  sudo ./aws/install
	- Aws cli version can be checked using below command
		○ aws --version
	- Login in to aws console using aws cli
		○ aws configure
	- Below are commands to list the aws resources
		○ aws s3 ls
		○ aws ec2 describe-instances
		○ aws iam list-users
	- In the Github below url, added below files,
		○ Shell script to list the aws resources
		○ Cron job script to configure in linux instances
		○ Cron job can be opened using below script
			§ crontab -e
![image](https://github.com/SaranyaAshok1989/DevOpsProjects/assets/57959150/3a215caf-c216-4aaa-ad6c-7ccdfa2a945b)

