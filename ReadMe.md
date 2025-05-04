# Project Setup

This project is to test features of git actions and to build a complete CI/CD integration 

## Setup up git and docker on local


## Clone this repo on local using git 
`git clone https://github.com/pratikbanjare/git-action-test-lab.git`

## Build the project using maven 
`mvn clean package`

## Docker command to build image 
`docker build -t DOCKERUSERNAME/git_action_test_lab.jar:latest`

## Docker command to push the container to docker hub
`docker push -t DOCKERUSERNAME/git_action_test_lab.jar:latest`

Replace `DOCKERUSERNAME` with your docker username.

