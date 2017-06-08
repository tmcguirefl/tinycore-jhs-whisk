FROM tatsushid/tinycore:7.2-x86_64

# Instructions are run with 'tc' user
USER tc

RUN tce-load -wic \
        ncurses

#RUN tce-load -wic \
#        openssl-dev

# tiny core uses wget which is part of busybox.
# busybox wget does not have support for openssl therefore
# it can't be used for obtaining a single file from a github repo
# which requires https for the transfer.
# By tce-loading wget this functionality will be built into the
# image.
#RUN tce-load -wic \
#        wget

# Instructions after here are run with 'root' user
USER root

RUN mkdir /lib64 \
    && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2 \
    && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
    && cd /home \
    && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz \
    && tar -xf j805_linux64.tar.gz \
    && rm -rf j805_linux64.tar.gz \
    && mkdir /home/j64-805/addons/whisk
# Added a whisk directory to addons so that the whisk webapps can be stored their

# the temp directory for j64-805 under tiny core ends up being /tmp so this is where
# the wget of the main application should take place.
#RUN cd /tmp \
#    && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs

# copy the local init.ijs and run.ijs required by the OpenWhisk protocol
COPY ./init.ijs /home/j64-805/addons/whisk/
COPY ./run.ijs /home/j64-805/addons/whisk/


ENV CONFIG="BIND=:''localhost''"
ENV RUN=""

# example command line for joebo/docker-tinycor-jhs
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''joe'' [ PASS=:''test''" tinycore-jhs:latest
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''joe'' [ PASS=:''test'' [ OKURL=:''jdemo1''" -e RUN="load '~addons/ide/jhs/demo/jdemo1.ijs'" tinycore-jhs:latest

# example command line for tinycore-jhs-whisk implementation with a main.ijs pulled from GitHub
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs:latest
# docker run -p 8080:8080 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''init'';''run'' " -e RUN="load '~addons/whisk/init.ijs' [ load '~addons/whisk/run.ijs'" tinycore-jhs:latest

ENTRYPOINT /home/j64-805/bin/jconsole -js "config_jhs_ =: 3 : '$CONFIG'" -js "$RUN" -js "load'~addons/ide/jhs/core.ijs'" "init_jhs_''"
