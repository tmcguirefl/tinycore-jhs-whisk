Added on to joebo/tinycore-jhs to set up a whisk environment

docker image for j64-805 jhs and tinycore with main file added for openwhisk handling
see: https://hub.docker.com/r/joebo/tinycore-jhs/

COPY commands added into the Docker file to pull in init.ijs and run.ijs into the image

By pulling down the git directory you can create an image running JSoftware JHS and by using 
the following docker run command can set the image up to work with whisk to run microapps in J:
docker run -p 8080:8080 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''init'';''run'' " -e RUN="load '~addons/whisk/init.ijs' [ load '~addons/whisk/run.ijs'" tinycore-jhs:latest
