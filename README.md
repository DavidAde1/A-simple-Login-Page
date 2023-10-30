# A-simple-Login-Page

## Explanation of the Dockerfile Added
I added a Dockerfile that builds a Docker image based on Alpine Linux. The image contains an installation of the Nginx web server with a custom configuration and some static files.

The first step in the Dockerfile is to update and upgrade the Alpine package manager and install Nginx without caching any files.

The next step is to remove the default Nginx configuration files and create a directory for the static files that will be served by the web server. The static files are then copied into this directory.

## Dockerfile commands to run 
You can use the following commands to start the nginx server
``` docker build -t loginpage . ```

Then you can start the container with docker image downloaded on your computer with this command
``` docker run -d -p 80:80 loginpage ```
