docker image for j64-805 jhs and tinycore with main file added for openwhisk handling
see: https://hub.docker.com/r/joebo/tinycore-jhs/

To add a file into the docker image you can use the docker RUN command with wget
In this repository there is a file main.ijs. this needs to be placed in the 
J software code directory.

By using the following RUN cmd you can download a file from github directly 
into a docker image

RUN wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs

The file would need to be placed somewhere in the J software distribution. I recommend 
creating a temp directory under the /home/j64-805 directory and placing the file there.
see the Dockerfile for the complete command
