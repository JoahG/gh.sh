#! /bin/bash

if [ \( "$1" == "create" \) ]
then
	if [ \( $# != 2 \) ]
	then
		echo "Usage: hub create <repo name>"
		exit 1
	fi
	curl -XPOST -H 'Authorization: token $GH_AUTH_TOKEN' https://api.github.com/user/repos -d '{"name":"'$2'"}' --silent >/dev/null
	echo 'GitHub repository created.'
	if [ -d .git ]
	then
		git remote add github 'https://github.com/$GH_USERNAME/'$2'.git'
		echo 'GitHub remote added.'
	fi
fi