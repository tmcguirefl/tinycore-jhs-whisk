FROM tatsushid/tinycore:7.2-x86_64

# Instructions are run with 'tc' user
USER tc

RUN tce-load -wic \
        ncurses \
#        openssl-dev \    # needed for full wget to use https
        wget
# full wget is needed for J to use pacman to obtain addons at runtime.
# tinycore comes with busybox wget but it only supports a subset of option flags

# tiny core uses wget which is part of busybox.
# busybox wget does not have support for openssl therefore
# it can't be used for obtaining a single file from a github repo
# which requires https for the transfer.
# By tce-loading wget this functionality will be built into the
# image.

# Instructions after here are run with 'root' user
USER root

# copy in any addons so they are available for commands in the following
# run command. After the run command the addons will be available just
# as if the package manager had been used within J. This way there
# doesn't need to be any additions made to the J profile file or
# the config file.
COPY ./convert_json_1.0.9_linux.tar.gz /home/
COPY ./convert_misc_1.3.5_linux.tar.gz /home/

# Every RUN command in a docker file adds an image layer. This makes
# debugging a docker image difficult so glom all the run commands
# for the J distribution here in this run command
RUN mkdir /lib64 \
    && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2 \
    && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5 \
    && cd /home \
    && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz \
    && tar -xf j805_linux64.tar.gz \
    && rm -rf j805_linux64.tar.gz \
    && cd /home/j64-805/addons \
    && tar -xf /home/convert_json_1.0.9_linux.tar.gz \
    && rm -rf /home/convert_json_1.0.9_linux.tar.gz \
    && tar -xf /home/convert_misc_1.3.5_linux.tar.gz \
    && rm -rf /home/convert_misc_1.3.5_linux.tar.gz \
    && mkdir /home/j64-805/addons/web \
    && mkdir /home/j64-805/addons/web/whisk
# Added a whisk directory to addons so that the whisk webapps can be stored their

# copy the local init.ijs and run.ijs required by the OpenWhisk protocol
COPY ./init.ijs /home/j64-805/addons/web/whisk/
COPY ./run.ijs /home/j64-805/addons/web/whisk/


ENV CONFIG="BIND=:''localhost''"
ENV RUN=""

# example command line for joebo/docker-tinycor-jhs
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''joe'' [ PASS=:''test''" tinycore-jhs:latest
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''joe'' [ PASS=:''test'' [ OKURL=:''jdemo1''" -e RUN="load '~addons/ide/jhs/demo/jdemo1.ijs'" tinycore-jhs:latest

# example command line for tinycore-jhs-whisk implementation
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs:latest
