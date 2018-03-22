# Stone DevOps Challenge

## Presentation

This project contaisn the necessary files for a CI/CD example environment.

Tools used for this project:
* Jenkins
* Ansible
* Docker

## How does the magic happens ?

The Jenkins is responsible to clone this repo, create an docker image, install the source code and run the tests. All these steps are available on *Jenkinsfile*.
Once everything works well, jenkins will call ansible using the *webserver-playbook.yml* file as playbook. This playbook will stop the current image and start a new version
of image created by Jenkins. To be sure which version of image the ansible should start, every image created by jenkins has label with the build ID. 

The docker image is created based on *Dockerfile*.

## Installation steps on Jenkins

1. Create a new job in Jenkins. 
1. Enter a name for the project and choose **Pipeline**
1. On Pipeline definitions, choose **Pipeline script from SCM**
1. On Repository URL type *https://github.com/licor/stone_devops_challenge*
1. Save.

That's it! Now you are able to clone, test and deploy this app using one click :)

## Jenkins access

**Address**: [http://voyage.lcsantos.com.br:8080](http://voyage.lcsantos.com.br:8080)  
**Username**: inacio.correa  
**Password**: (ask me!)  

## Challenge App access 

To access the challenge server go to [http://voyage.lcsantos.com.br:3000](http://voyage.lcsantos.com.br:3000).

