# README
r-docker-workflow is a sample project for showing how to set up all the basic elements needed for completely automated Continuous Integration (CI) for developing and deploying R code.

The sample project currently combines the following technologies:
* R
* RStudio
* GitHub
* Docker
* Docker Hub
* CircleCI
* DigitalOcean

...but it can easily be changed or expanded to include other services.

Apart from the R files the full automated setup is controlled by adding only these 4 extra script files to the R project:
* `Dockerfile` - sets up a Docker Data Volume container
* `docker-compose.yml` - builds and starts the full Docker project
* `circle.yml` - runs the actual CI steps on CircleCI
* `deploy.sh` - does the actual deploy to a DigitalOcean server

This sample project is intended an easy starting point for anyone who wants to learn how to deploy R solutions professionally using modern CI magic.

Enjoy!  
:-)

Niels Ole Dam  
Things in Flow  
Copenhagen  
14/10-2016

# More info
The project was developed for a presentation I did for the "CopenhagenR - useR Group" in October 2016.

You can see the slides for the full presentation here (clickable pdf):  
http://thingsinflow.dk/r-Docker-workflow

There is also a flow diagram showing the different steps I touch on in the presentation here (clickable pdf):  
http://bit.ly/R-Docker-workflow  

All the blue numbers and doc icons in the flow diagram are clickable – they link to the related page in the presentation.  
All links and underlines in the presentation are also clickable – they link to related pages else where on the Internet.

# How to use
* If necessary: Sign up for an account on GitHub if you don't have one all ready.
* Clone this project from GitHub and add as a new project to your local version of RStudio as described in the presentation (see link above).
* Add your GitHub account name instead of `nielsoledam` in the `docker-compose.yml` file, i.e. change this line `image: nielsoledam/shiny-datastore:latest` to `image: [your_github_accountname_here]/shiny-datastore:latest`
* If necessary: Sign up for accounts on Docker, Docker Hub, CircleCI and DigitalOcean.
* Setup the build project on CircleCI (see the presentation for more info), add the necessary Environment variables to the build project (`$DOCKER_USER`, `$DOCKER_PASS`, `$DEPLOY_TOKEN`, `$DOCKER_EMAIL`), and activate automatic build when GitHub repo changes.
* Test that the DigtialOcean server builds automatically when you push a change to the GitHub repo.
* Add you own R code and push it GitHub.
* Contgratulations: Your DigitalOcean server will now build, test and deploy automatically (if the test succedes, of course...) with your very own Shiny App!



