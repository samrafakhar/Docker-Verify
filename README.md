# Docker-Verify
test deployed "nginx" container by writing a shell script

## Functionalities
 - It takes the name of the repository from the user
 - It takes the name of the container from the user
 - It takes the tag of the container
 - It pulls the container and starts it by mapping to port 80
 - It uses curl to receive a response from the container
 - It verifies that the response is the same as you have written in the previous assignment. 
 - If there is an error during these steps, the script gives a helpful message so that the user can act upon it and proceed to the next steps.

## How to run
1. Open Terminal in Linux
2. You need to have docker installed for this
3. Run 'bash verify.sh'

![](https://github.com/samrafakhar/Docker-Verify/blob/main/Screenshot%20from%202021-04-28%2009-01-53.png)

## Demo
https://user-images.githubusercontent.com/68819501/121775267-0b511080-cba0-11eb-8a1a-a16c29db5a12.mp4

