# README
r-docker-workflow is a sample project for showing how to set up all the basic elements needed for completely automated Continuous Integration (CI) for developing and deploying R code.

The sample project currently combines the following technologies:
* R
* RStudio
* GitHub
* Docker
* Docker Hub
* CricleCI
* DigitalOcean

...but it can easily be changed or expanded to include other services.

Apart from the R files the full automated setup is controlled by adding only these 4 extra script files to the R project:
* Dockerfile  
(script used for setting up a Docker Data Volume container)
* docker-compose.yml  
(script used for building and starting the full Docker project)
* circle.yml  
(script used for running the actual CI steps on CircleCI)
* deploy.sh  
(shell script for doing the actual deploy to a DigitalOcean server)

This sample project is intended an easy starting point for anyone who wants to learn how to deploy R solutions professionally using modern CI magic.

Enjoy!  
:-)

Niels Ole Dam  
Things in Flow  
Copenhagen  
14/10-2016

# More info
The project was developed for a presentation I did for the "CopenhagenR - useR Group" in October 2016.

You can see the slides for the full presentation here:  
http://thingsinflow.dk/r-Docker-workflow

There is also a (clickable) flow diagram showing the different steps I touch on in the presentation here – all the blue elements are clickable:  
http://bit.ly/R-Docker-workflow
