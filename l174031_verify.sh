#!/bin/bash
read -p 'Container: ' container
read -p 'Repository: ' repo
read -p 'Tag: ' tag
read -p 'Username: ' Uname
read -sp 'Password: ' Pwd
docker login --username=$Uname --password=$Pwd
docker run -it -d -p 80:80 --name $container $Uname/$repo:$tag
docker logout
curl localhost > $(pwd)/l174031/output.txt 
docker stop $container
cd l174031
echo "Comparing index.html and output.txt"
checkdiff=$(diff index.html output.txt)
if(checkdiff=="") then
	echo "Both files are same"
else
	echo $checkdiff
fi
