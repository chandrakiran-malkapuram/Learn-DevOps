#!/bin/bash

############
#About -  how to get organizetion access list
#learning from - abhishek veeramalla
#my name -chandu
#purpose -learning


#URL 
API_URl="https://api.github.com"

#username and token

USERNAME=$username
TOKEN=$token

REPO_OWNER=$1
REPO_NAME=$2

function list_users_with_read_access
local endpoint="$REPOS/${REPOS_OWNERS}/${REPOS_NAMES}/$collaborators"
collaborators="$(github_api_get"$endpoints" | jq -r '.[] | select(.permissions.pull == true) | .login')"


if [[ -z "$collaborators"]]; then
echo "no users with read access fond for ${REPO_OWNER}/${REPO_NAME}."
else
echo "users with read access ${REPO_OWNER}/${REPO_NAME}."
echo "$collaborators"
fi
