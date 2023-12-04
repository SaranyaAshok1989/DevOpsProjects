##################
#Author:Saranya
#Date:dec 4 2023
#version: v1

#This script is to hit Gihub and fetch the name of collobarators

#################

#!/bin/bash


#Github api url
API_URL = "https://api.github.com"

#Username and token
USERNAME = $username
TOKEN = $token

#User and Repository Info
REPO_OWNER =$1
REPO_NAME = $2

function getGitHubUrl()
{
	local url = "${API_URL}/repos/${REPO_OWNER}/${REPO_NAME}
	curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

function getCollbaratorsList()
{
	local endPoint = "/collaborators"
	collbarators = "$(getGitHubUrl "$endPoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

	if[[-z "$collbarators" ]]; then
		echo "No users"
	else
		  echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
		  echo "$collbarators"

	fi

}

# Main script

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
getCollbaratorsList




	

