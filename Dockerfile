Last login: Fri May 19 09:37:41 on ttys006
Thomass-MacBook-Pro:~ tmcguire$ which wsk
Thomass-MacBook-Pro:~ tmcguire$ type wsk
-bash: type: wsk: not found
Thomass-MacBook-Pro:~ tmcguire$ cd /usr/local
Thomass-MacBook-Pro:local tmcguire$ ls
Bluemix		Homebrew	include		opt		share
Cellar		bin		lib		remotedesktop	var
Frameworks	etc		libexec		sbin
Thomass-MacBook-Pro:local tmcguire$ cd Bluemix
Thomass-MacBook-Pro:Bluemix tmcguire$ ls
bin	bx
Thomass-MacBook-Pro:Bluemix tmcguire$ cd bin
Thomass-MacBook-Pro:bin tmcguire$ ls
LICENSE			bluemix-analytics	wsk
NOTICE			bx
bluemix			cfcli
Thomass-MacBook-Pro:bin tmcguire$ ls -l
total 66136
-rw-r--r--  1 root  admin       168 Apr 13 01:41 LICENSE
-rw-r--r--  1 root  admin       573 Apr 13 01:41 NOTICE
-rwxr-xr-x  1 root  admin  17831228 Apr 13 01:41 bluemix
-rwxr-xr-x  1 root  admin   5677568 Apr 13 01:41 bluemix-analytics
lrwxr-xr-x  1 root  admin        30 Apr 28 15:14 bx -> /usr/local/Bluemix/bin/bluemix
drwxr-xr-x  3 root  admin       102 Apr 13 01:41 cfcli
-rwxr-xr-x  1 root  admin  10331264 May 19 10:05 wsk
Thomass-MacBook-Pro:bin tmcguire$ type bx
bx is /usr/local/bin/bx
Thomass-MacBook-Pro:bin tmcguire$ ls -l /usr/local/bin/bx
lrwxr-xr-x  1 root  admin  30 Apr 28 15:14 /usr/local/bin/bx -> /usr/local/Bluemix/bin/bluemix
Thomass-MacBook-Pro:bin tmcguire$ man ln
Thomass-MacBook-Pro:bin tmcguire$ pwd
/usr/local/Bluemix/bin
Thomass-MacBook-Pro:bin tmcguire$ sudo ln /usr/local/Bluemix/bin/wsk /usr/local/bin
Password:
Thomass-MacBook-Pro:bin tmcguire$ docker history tinycore-jhs
Error response from daemon: no such id: tinycore-jhs
Thomass-MacBook-Pro:bin tmcguire$ docker history
"docker history" requires exactly 1 argument(s).
See 'docker history --help'.

Usage:  docker history [OPTIONS] IMAGE

Show the history of an image
Thomass-MacBook-Pro:bin tmcguire$ docker history *
"docker history" requires exactly 1 argument(s).
See 'docker history --help'.

Usage:  docker history [OPTIONS] IMAGE

Show the history of an image
Thomass-MacBook-Pro:bin tmcguire$ docker images
REPOSITORY           TAG                 IMAGE ID            CREATED             SIZE
swipl/swipl          latest              07a561a20626        3 weeks ago         263 MB
joebo/tinycore-jhs   latest              44a4bc091610        6 months ago        14.6 MB
Thomass-MacBook-Pro:bin tmcguire$ docker history joebo/tinycore-jhs
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
44a4bc091610        6 months ago        /bin/sh -c #(nop)  ENTRYPOINT ["/bin/sh" "...   0 B                 
<missing>           6 months ago        /bin/sh -c #(nop)  ENV RUN=                     0 B                 
<missing>           6 months ago        /bin/sh -c #(nop)  ENV CONFIG=BIND=:''loca...   0 B                 
<missing>           6 months ago        /bin/sh -c cd /home     && wget http://www...   6.67 MB             
<missing>           6 months ago        /bin/sh -c mkdir /lib64     && ln -s /lib/...   55 B                
<missing>           6 months ago        /bin/sh -c #(nop)  USER [root]                  0 B                 
<missing>           6 months ago        /bin/sh -c tce-load -wic         ncurses        630 kB              
<missing>           15 months ago       /bin/sh -c #(nop) CMD ["/bin/sh"]               0 B                 
<missing>           15 months ago       /bin/sh -c #(nop) USER [tc]                     0 B                 
<missing>           15 months ago       /bin/sh -c mkdir -p /tmp/tce/optional     ...   13 B                
<missing>           15 months ago       /bin/sh -c #(nop) ADD file:2f73a6a097ab702...   193 kB              
<missing>           15 months ago       /bin/sh -c #(nop) ADD file:0811ffbbd2f053f...   7.13 MB             
Thomass-MacBook-Pro:bin tmcguire$ curl -user "joe" -password "test" -d "i.6" -X POST http://localhost:65001/ 
Enter host password for user 'ser':
ordordordThomass-MacBook-Pro:bin tmcguire$ 
Thomass-MacBook-Pro:bin tmcguire$ ls
LICENSE			bluemix			bx			wsk
NOTICE			bluemix-analytics	cfcli
Thomass-MacBook-Pro:bin tmcguire$ curl -u joe  -d "i.6" -X POST http://localhost:65001/ 
Enter host password for user 'joe':
curl: (7) Failed to connect to localhost port 65001: Connection refused
Thomass-MacBook-Pro:bin tmcguire$ curl -u joe  -d "i.6" -X POST http://127.0.0.1:65001/ 
Enter host password for user 'joe':
curl: (7) Failed to connect to 127.0.0.1 port 65001: Connection refused
Thomass-MacBook-Pro:bin tmcguire$ docker ip default
docker: 'ip' is not a docker command.
See 'docker --help'
Thomass-MacBook-Pro:bin tmcguire$ docker -run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''tom'' [ PASS=:''banner''" joebo/tinycore-jhs
unknown shorthand flag: 'r' in -run
See 'docker --help'.

Usage:	docker COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default "/Users/tmcguire/.docker")
  -D, --debug              Enable debug mode
      --help               Print usage
  -H, --host list          Daemon socket(s) to connect to (default [])
  -l, --log-level string   Set the logging level ("debug", "info", "warn", "error", "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default "/Users/tmcguire/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default "/Users/tmcguire/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/Users/tmcguire/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  checkpoint  Manage checkpoints
  container   Manage containers
  image       Manage images
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  volume      Manage volumes

Commands:
  attach      Attach to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  deploy      Deploy a new stack or update an existing stack
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.

Thomass-MacBook-Pro:bin tmcguire$ docker -run p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''tom'' [ PASS=:''banner''" joebo/tinycore-jhs
unknown shorthand flag: 'r' in -run
See 'docker --help'.

Usage:	docker COMMAND

A self-sufficient runtime for containers

Options:
      --config string      Location of client config files (default "/Users/tmcguire/.docker")
  -D, --debug              Enable debug mode
      --help               Print usage
  -H, --host list          Daemon socket(s) to connect to (default [])
  -l, --log-level string   Set the logging level ("debug", "info", "warn", "error", "fatal") (default "info")
      --tls                Use TLS; implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default "/Users/tmcguire/.docker/ca.pem")
      --tlscert string     Path to TLS certificate file (default "/Users/tmcguire/.docker/cert.pem")
      --tlskey string      Path to TLS key file (default "/Users/tmcguire/.docker/key.pem")
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Management Commands:
  checkpoint  Manage checkpoints
  container   Manage containers
  image       Manage images
  network     Manage networks
  node        Manage Swarm nodes
  plugin      Manage plugins
  secret      Manage Docker secrets
  service     Manage services
  stack       Manage Docker stacks
  swarm       Manage Swarm
  system      Manage Docker
  volume      Manage volumes

Commands:
  attach      Attach to a running container
  build       Build an image from a Dockerfile
  commit      Create a new image from a container's changes
  cp          Copy files/folders between a container and the local filesystem
  create      Create a new container
  deploy      Deploy a new stack or update an existing stack
  diff        Inspect changes to files or directories on a container's filesystem
  events      Get real time events from the server
  exec        Run a command in a running container
  export      Export a container's filesystem as a tar archive
  history     Show the history of an image
  images      List images
  import      Import the contents from a tarball to create a filesystem image
  info        Display system-wide information
  inspect     Return low-level information on Docker objects
  kill        Kill one or more running containers
  load        Load an image from a tar archive or STDIN
  login       Log in to a Docker registry
  logout      Log out from a Docker registry
  logs        Fetch the logs of a container
  pause       Pause all processes within one or more containers
  port        List port mappings or a specific mapping for the container
  ps          List containers
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rename      Rename a container
  restart     Restart one or more containers
  rm          Remove one or more containers
  rmi         Remove one or more images
  run         Run a command in a new container
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  search      Search the Docker Hub for images
  start       Start one or more stopped containers
  stats       Display a live stream of container(s) resource usage statistics
  stop        Stop one or more running containers
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
  top         Display the running processes of a container
  unpause     Unpause all processes within one or more containers
  update      Update configuration of one or more containers
  version     Show the Docker version information
  wait        Block until one or more containers stop, then print their exit codes

Run 'docker COMMAND --help' for more information on a command.

Thomass-MacBook-Pro:bin tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''tom'' [ PASS=:''banner''" joebo/tinycore-jhs

J HTTP Server - init OK

Requires HTML 5 browser with javascript.

On many systems localhost is the same as 127.0.0.1. 

Ctrl+c here signals an interrupt to J.

A : separates ip address from port.

Access from another machine:
   http://SERVER_IP_ADDRESS:65001/jijx

Start a web browser on this machine and enter URL:
   http://127.0.0.1:65001/jijx

^C


exit
exit ''
quit
^C^C^Z
stop
Thomass-MacBook-Pro:bin tmcguire$ 
Thomass-MacBook-Pro:bin tmcguire$ stop
-bash: stop: command not found
Thomass-MacBook-Pro:bin tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''tom'' [ PASS=:''banner'' [ OKURL=:''jdemo1''" -e RUN="load '~addons/ide/jhs/demo/jdemo1.ijs'" joebo/tinycore-jhs

J HTTP Server - init OK

Requires HTML 5 browser with javascript.

On many systems localhost is the same as 127.0.0.1. 

Ctrl+c here signals an interrupt to J.

A : separates ip address from port.

Access from another machine:
   http://SERVER_IP_ADDRESS:65001/jijx

Start a web browser on this machine and enter URL:
   http://127.0.0.1:65001/jijx

Thomass-MacBook-Pro:bin tmcguire$ 
Thomass-MacBook-Pro:bin tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''tom'' [ PASS=:''banner'' [ OKURL=:''jdemo1''" -e RUN="load 'tmp/main.ijs'" joebo/tinycore-jhs
not found: //tmp/main.ijs
|file name error: script
|       0!:0 y[4!:55<'y'
   Thomass-MacBook-Pro:bin tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''tom'' [ PASS=:''banner'' [ OKU:''main''" -e RUN="load '/tmp/main'" joebo/tinycore-jhs
not found: /tmp/main
|file name error: script
|       0!:0 y[4!:55<'y'
   Thomass-MacBook-Pro:bin tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''tom'' [ PASS=:''banner'' [ OKU:''main''" -e RUN="load '/tmp/main.ijs'" joebo/tinycore-jhs
not found: /tmp/main.ijs
|file name error: script
|       0!:0 y[4!:55<'y'
   Thomass-MacBook-Pro:bin tmcguire$ type wget
-bash: type: wget: not found
Thomass-MacBook-Pro:bin tmcguire$ curl http://github.com/tmcguirefl/tincycore-jhs-whisk/Readme.md
Thomass-MacBook-Pro:bin tmcguire$ curl http://github.com/tmcguirefl/tincycore-jhs-whisk/Readme.md
Thomass-MacBook-Pro:bin tmcguire$ curl -X GET http://github.com/tmcguirefl/tincycore-jhs-whisk/Readme.md
Thomass-MacBook-Pro:bin tmcguire$ curl -X GET http://github.com/tmcguirefl/tincycore-jhs-whisk/README.md
Thomass-MacBook-Pro:bin tmcguire$ curl  http://github.com/tmcguirefl/tincycore-jhs-whisk/README.md
Thomass-MacBook-Pro:bin tmcguire$ curl https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
NB. main.ijs - skeleton for handling OpenWhisk microservice events
NB.    at its basic level a whisk function consumes JSON input and 
NB.    responds with JSON output
main =: 3 : 0
z =. '{ "response": "hello world" }'
z
)
Thomass-MacBook-Pro:bin tmcguire$ pwd
/usr/local/Bluemix/bin
Thomass-MacBook-Pro:bin tmcguire$ cd
Thomass-MacBook-Pro:~ tmcguire$ mkdir Jdocker
Thomass-MacBook-Pro:~ tmcguire$ cd Jdocker
Thomass-MacBook-Pro:Jdocker tmcguire$ ls
Thomass-MacBook-Pro:Jdocker tmcguire$ git init
Initialized empty Git repository in /Users/tmcguire/Jdocker/.git/
Thomass-MacBook-Pro:Jdocker tmcguire$ ls -al
total 0
drwxr-xr-x   3 tmcguire  staff   102 May 24 08:49 .
drwxr-xr-x+ 56 tmcguire  staff  1904 May 24 08:48 ..
drwxr-xr-x  10 tmcguire  staff   340 May 24 08:49 .git
Thomass-MacBook-Pro:Jdocker tmcguire$ rm -rf .git
Thomass-MacBook-Pro:Jdocker tmcguire$ git clone https://github.com/tmcguirefl/tinycore-jhs-whisk
Cloning into 'tinycore-jhs-whisk'...
remote: Counting objects: 21, done.
remote: Compressing objects: 100% (21/21), done.
remote: Total 21 (delta 7), reused 3 (delta 0), pack-reused 0
Unpacking objects: 100% (21/21), done.
Thomass-MacBook-Pro:Jdocker tmcguire$ ls
tinycore-jhs-whisk
Thomass-MacBook-Pro:Jdocker tmcguire$ cd tinycore-jhs-whisk
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ ls
Dockerfile	Makefile	README.md	main.ijs
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build -t jhswhisk -f Dockerfile
"docker build" requires exactly 1 argument(s).
See 'docker build --help'.

Usage:  docker build [OPTIONS] PATH | URL | -

Build an image from a Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Error response from daemon: Unknown instruction: &&
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:7.0-x86_64
7.0-x86_64: Pulling from tatsushid/tinycore
d6ca8be2fff2: Already exists 
8d27045199bf: Already exists 
40d1c339e102: Already exists 
a3ed95caeb02: Already exists 
Digest: sha256:201bb9cac8187bf78b85ccb665136f1b7883a1bb9556f9e9a80dda5dc0efb4a2
Status: Downloaded newer image for tatsushid/tinycore:7.0-x86_64
 ---> d269f68a5569
Step 2/9 : RUN tce-load -wic         ncurses
 ---> Running in 2795b824925a
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz          100% |*******************************|   196k  0:00:00 ETA
ncurses.tcz: OK
Parallel unsquashfs: Using 4 processors
39 inodes (135 blocks) to write

[===============================================================|] 135/135 100%

created 25 files
created 12 directories
created 14 symlinks
created 0 devices
created 0 fifos
 ---> fe899d874c3f
Removing intermediate container 2795b824925a
Step 3/9 : USER root
 ---> Running in aaef1cf5fa5f
 ---> b2c7c404dd18
Removing intermediate container aaef1cf5fa5f
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 087ecf4cb68c
 ---> e1d0696bc1f4
Removing intermediate container 087ecf4cb68c
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 6042caac843f
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA
 ---> 0d03b6fdeb1a
Removing intermediate container 6042caac843f
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 30b33eaa6953
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ doker ps
-bash: doker: command not found
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs:latest
Unable to find image 'tinycore-jhs:latest' locally
docker: Error response from daemon: repository tinycore-jhs not found: does not exist or no pull access.
See 'docker run --help'.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs-whisk:latest
Unable to find image 'tinycore-jhs-whisk:latest' locally
docker: Error response from daemon: repository tinycore-jhs-whisk not found: does not exist or no pull access.
See 'docker run --help'.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" .
docker: Error parsing reference: "." is not a valid repository/tag: invalid reference format.
See 'docker run --help'.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" .
docker: Error parsing reference: "." is not a valid repository/tag: invalid reference format.
See 'docker run --help'.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:7.0-x86_64
 ---> d269f68a5569
Step 2/9 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> fe899d874c3f
Step 3/9 : USER root
 ---> Using cache
 ---> b2c7c404dd18
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> e1d0696bc1f4
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 0d03b6fdeb1a
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in ec04c2af556c
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/10 : FROM tatsushid/tinycore:7.0-x86_64
 ---> d269f68a5569
Step 2/10 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> fe899d874c3f
Step 3/10 : RUN tce-load -wic     ca-certificates
 ---> Running in 2c3d41e8c08e
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: ca-certificates.tcz.md5.txt: No such file or directory
Error on ca-certificates.tcz
 ---> be5b0744437d
Removing intermediate container 2c3d41e8c08e
Step 4/10 : USER root
 ---> Running in c70582cb2591
 ---> 2ea6d724ed83
Removing intermediate container c70582cb2591
Step 5/10 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 008e5e3f5834
 ---> ac51f85b3283
Removing intermediate container 008e5e3f5834
Step 6/10 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in a7503b60a931
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA
 ---> 0482c09273f4
Removing intermediate container a7503b60a931
Step 7/10 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in fa993ad18982
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/10 : FROM tatsushid/tinycore:latest
latest: Pulling from tatsushid/tinycore
fbb3502d5966: Pull complete 
af1a2196dbd6: Pull complete 
5e95626c0443: Pull complete 
Digest: sha256:6df76d4751bb375bd76b778e827e0df62fe596ab1ff6655cdfcee057749d5e35
Status: Downloaded newer image for tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/10 : RUN tce-load -wic         ncurses
 ---> Running in f3a23cfe193e
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           91% |****************************   |   156k  0:00:00 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
 ---> 30c437a27b21
Removing intermediate container f3a23cfe193e
Step 3/10 : RUN tce-load -wic     ca-certificates
 ---> Running in e5c3cbbed87c
ca-certificates.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz           12% |***                            |   139k  0:00:07 ETA
openssl.tcz           24% |*******                        |   275k  0:00:06 ETA
openssl.tcz           41% |************                   |   473k  0:00:04 ETA
openssl.tcz           67% |********************           |   760k  0:00:01 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
Downloading: ca-certificates.tcz
touch: /usr/local/tce.installed/openssl: Permission denied
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz    6% |**                             | 13032   0:00:14 ETA
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
 ---> b8e873059a65
Removing intermediate container e5c3cbbed87c
Step 4/10 : USER root
 ---> Running in 959247f7f126
 ---> c4691afbb00d
Removing intermediate container 959247f7f126
Step 5/10 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in e9055d7d7f95
 ---> 9680532cf4ba
Removing intermediate container e9055d7d7f95
Step 6/10 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in e703edac6429
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   11% |***                            |   203k  0:00:07 ETA
j805_linux64.tar.gz   84% |**************************     |  1543k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> e9ad75936140
Removing intermediate container e703edac6429
Step 7/10 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 872574628fe4
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/10 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/10 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 30c437a27b21
Step 3/10 : USER root
 ---> Running in d7b5d5fa7474
 ---> df75aff47bbe
Removing intermediate container d7b5d5fa7474
Step 4/10 : RUN tce-load -wic     ca-certificates
 ---> Running in 2d3e7a096180
Don't run this as root.
The command '/bin/sh -c tce-load -wic     ca-certificates' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ tar tvf ~/Downloads/squashfs-tools.tar.gz 
drwxr-xr-x  0 1001   staff       0 Sep 26  2014 ./
drwxr-xr-x  0 root   root        0 Sep 26  2014 ./usr/
drwxr-xr-x  0 root   root        0 Sep 26  2014 ./usr/local/
drwxr-xr-x  0 root   root        0 Sep 26  2014 ./usr/local/bin/
-rwxr-xr-x  0 root   root   127872 Sep 26  2014 ./usr/local/bin/mksquashfs
-rwxr-xr-x  0 root   root    65616 Sep 26  2014 ./usr/local/bin/unsquashfs
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/11 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/11 : RUN tce-load -wic     squashfs-tools-4.x
 ---> Running in 18cb6457d0a7
Downloading: squashfs-tools-4.x.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: squashfs-tools-4.x.tcz.md5.txt: No such file or directory
Error on squashfs-tools-4.x.tcz
 ---> fbf337044272
Removing intermediate container 18cb6457d0a7
Step 3/11 : RUN tce-load -wic         ncurses
 ---> Running in 51726eccb288
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           15% |****                           | 27512   0:00:05 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
 ---> 14cb794f383a
Removing intermediate container 51726eccb288
Step 4/11 : RUN tce-load -wic     ca-certificates
 ---> Running in 5e09aef3690c
ca-certificates.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz           14% |****                           |   166k  0:00:05 ETA
openssl.tcz           68% |*********************          |   777k  0:00:00 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz   46% |**************                 | 94120   0:00:01 ETA
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
 ---> 96a465caf554
Removing intermediate container 5e09aef3690c
Step 5/11 : USER root
 ---> Running in b7ffecd9da5f
 ---> 43559719f90c
Removing intermediate container b7ffecd9da5f
Step 6/11 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 96ff56bbfd46
 ---> 95914bd792f7
Removing intermediate container 96ff56bbfd46
Step 7/11 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 4dbc1c324e02
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> a2e50103c84f
Removing intermediate container 4dbc1c324e02
Step 8/11 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 948d2b956e40
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/11 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/11 : RUN tce-load -wic     squashfs-tools-4
 ---> Running in ee74465b202b
Downloading: squashfs-tools-4.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: squashfs-tools-4.tcz.md5.txt: No such file or directory
Error on squashfs-tools-4.tcz
 ---> ce7c29f63e57
Removing intermediate container ee74465b202b
Step 3/11 : RUN tce-load -wic         ncurses
 ---> Running in 82e5aa331b2c
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           78% |************************       |   135k  0:00:00 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
 ---> c935a751e4af
Removing intermediate container 82e5aa331b2c
Step 4/11 : RUN tce-load -wic     ca-certificates
 ---> Running in bf3671b9c991
ca-certificates.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz           14% |****                           |   165k  0:00:05 ETA
openssl.tcz           32% |**********                     |   366k  0:00:04 ETA
openssl.tcz           52% |****************               |   591k  0:00:02 ETA
openssl.tcz           83% |*************************      |   940k  0:00:00 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz   14% |****                           | 28960   0:00:05 ETA
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
 ---> b3a2320da815
Removing intermediate container bf3671b9c991
Step 5/11 : USER root
 ---> Running in 2d94027d9aef
 ---> 489933f2958a
Removing intermediate container 2d94027d9aef
Step 6/11 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 9c451bac4501
 ---> 6a48484e8edf
Removing intermediate container 9c451bac4501
Step 7/11 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 3b33ee79ba18
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   29% |*********                      |   531k  0:00:02 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 346c27736197
Removing intermediate container 3b33ee79ba18
Step 8/11 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in e51fa410d146
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/9 : RUN tce-load -wic         ncurses         openssl_dev
 ---> Running in 6a8dc61720d5
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           20% |******                         | 36200   0:00:03 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
Downloading: openssl_dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: openssl_dev.tcz.md5.txt: No such file or directory
Error on openssl_dev.tcz
 ---> d9789681bdf1
Removing intermediate container 6a8dc61720d5
Step 3/9 : USER root
 ---> Running in 0db3ecebbed7
 ---> be72f57fb38a
Removing intermediate container 0db3ecebbed7
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 61362e2b73bc
 ---> 762d4d53ec13
Removing intermediate container 61362e2b73bc
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 80dbad3423a1
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   16% |*****                          |   302k  0:00:05 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> e4a4e5881bd2
Removing intermediate container 80dbad3423a1
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 9fd3bc2da127
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/9 : RUN tce-load -wic         ncurses         openssl_dev         ca-certificates
 ---> Running in 74380df8fc8b
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz.dep OK
ncurses.tcz           32% |**********                     | 57920   0:00:02 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
Downloading: openssl_dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: openssl_dev.tcz.md5.txt: No such file or directory
Error on openssl_dev.tcz
 ---> c0413830dcf1
Removing intermediate container 74380df8fc8b
Step 3/9 : USER root
 ---> Running in f87d8ca393d5
 ---> afa53797055c
Removing intermediate container f87d8ca393d5
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 50c07c8d760a
 ---> 5de78818c6e7
Removing intermediate container 50c07c8d760a
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in cd809f35d8a6
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz    4% |*                              | 92409   0:00:19 ETA
j805_linux64.tar.gz   13% |****                           |   251k  0:00:12 ETA
j805_linux64.tar.gz   20% |******                         |   373k  0:00:11 ETA
j805_linux64.tar.gz   38% |***********                    |   692k  0:00:06 ETA
j805_linux64.tar.gz   63% |*******************            |  1155k  0:00:02 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> f979323c71b1
Removing intermediate container cd809f35d8a6
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 6c08b5df6171
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/9 : RUN tce-load -wic         ncurses         openssl_dev         ca-certificates         wget
 ---> Running in 28a506bb74a9
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz.dep OK
ncurses.tcz           21% |******                         | 37648   0:00:03 ETA
wget.tcz.dep OK
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
Downloading: openssl_dev.tcz
gnutls.tcz.dep OK
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgcrypt.tcz.dep OK
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: openssl_dev.tcz.md5.txt: No such file or directory
Error on openssl_dev.tcz
nettle.tcz.dep OK
p11-kit.tcz.dep OK
pcre.tcz.dep OK
 ---> 8c756972505f
Removing intermediate container 28a506bb74a9
Step 3/9 : USER root
 ---> Running in 0e7e29e34bfe
 ---> eb3f6abaa761
Removing intermediate container 0e7e29e34bfe
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in e7f8e4ce7a69
 ---> d29cea06a2bd
Removing intermediate container e7f8e4ce7a69
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 0c169a33f6c1
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   68% |*********************          |  1237k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> e7b9ed0b8b23
Removing intermediate container 0c169a33f6c1
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 2e704c0d04ee
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/9 : RUN tce-load -wic         ncurses         openssl_dev         openssl         ca-certificates         wget
 ---> Running in 1636f3bb8b52
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           20% |******                         | 36200   0:00:03 ETA
ca-certificates.tcz.dep OK
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
Downloading: openssl_dev.tcz
wget.tcz.dep OK
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz.dep OK
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: openssl_dev.tcz.md5.txt: No such file or directory
Error on openssl_dev.tcz
libgcrypt.tcz.dep OK
nettle.tcz.dep OK
p11-kit.tcz.dep OK
pcre.tcz.dep OK
 ---> 121a5d3050c4
Removing intermediate container 1636f3bb8b52
Step 3/9 : USER root
 ---> Running in 091e9001eabd
 ---> 988bd1b78da6
Removing intermediate container 091e9001eabd
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in aa49cb965ea9
 ---> 21ef1700fb7f
Removing intermediate container aa49cb965ea9
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in bf91863da441
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz    2% |                               | 43177   0:00:42 ETA
j805_linux64.tar.gz   13% |****                           |   251k  0:00:12 ETA
j805_linux64.tar.gz   27% |********                       |   500k  0:00:07 ETA
j805_linux64.tar.gz   41% |************                   |   749k  0:00:05 ETA
j805_linux64.tar.gz   56% |*****************              |  1029k  0:00:03 ETA
j805_linux64.tar.gz   86% |**************************     |  1566k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 85bd873dee19
Removing intermediate container bf91863da441
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 4e45081e67d1
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/9 : RUN tce-load -wic         ncurses         openssl         ca-certificates         wget
 ---> Running in c03a58d0bf58
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz.dep OK
ncurses.tcz           23% |*******                        | 40544   0:00:03 ETA
wget.tcz.dep OK
gnutls.tcz.dep OK
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
Downloading: openssl.tcz
libgcrypt.tcz.dep OK
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz            1% |                               | 13032   0:01:27 ETA
nettle.tcz.dep OK
openssl.tcz            9% |***                            |   113k  0:00:18 ETA
p11-kit.tcz.dep OK
openssl.tcz           25% |*******                        |   289k  0:00:08 ETA
openssl.tcz           38% |************                   |   441k  0:00:06 ETA
openssl.tcz           48% |**************                 |   544k  0:00:05 ETA
pcre.tcz.dep OK
openssl.tcz           77% |************************       |   876k  0:00:01 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz   48% |**************                 | 97016   0:00:01 ETA
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
Downloading: bzip2-lib.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
bzip2-lib.tcz        100% |*******************************| 28672   0:00:00 ETA

bzip2-lib.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/bzip2-lib: Permission denied
Downloading: pcre.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz              19% |*****                          | 36200   0:00:04 ETA
pcre.tcz             100% |*******************************|   184k  0:00:00 ETA

pcre.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/pcre: Permission denied
Downloading: libidn.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libidn.tcz            20% |******                         | 15928   0:00:03 ETA
libidn.tcz           100% |*******************************| 77824   0:00:00 ETA

libidn.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libidn: Permission denied
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA

libffi.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libffi: Permission denied
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz         100% |*******************************| 57344   0:00:00 ETA

libtasn1.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libtasn1: Permission denied
Downloading: p11-kit.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz           40% |************                   |   117k  0:00:01 ETA
p11-kit.tcz          100% |*******************************|   292k  0:00:00 ETA

p11-kit.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/p11-kit: Permission denied
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz               33% |**********                     | 66608   0:00:02 ETA
gmp.tcz              100% |*******************************|   196k  0:00:00 ETA

gmp.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gmp: Permission denied
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz             4% |*                              | 13032   0:00:19 ETA
nettle.tcz            48% |**************                 |   123k  0:00:02 ETA
nettle.tcz            78% |************************       |   202k  0:00:00 ETA
nettle.tcz           100% |*******************************|   256k  0:00:00 ETA

nettle.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/nettle: Permission denied
Downloading: libgpg-error.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgpg-error.tcz      28% |********                       | 13032   0:00:02 ETA
libgpg-error.tcz     100% |*******************************| 45056   0:00:00 ETA

libgpg-error.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgpg-error: Permission denied
Downloading: libgcrypt.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgcrypt.tcz         20% |******                         | 76744   0:00:03 ETA
libgcrypt.tcz         58% |******************             |   213k  0:00:01 ETA
libgcrypt.tcz        100% |*******************************|   364k  0:00:00 ETA

libgcrypt.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgcrypt: Permission denied
Downloading: gnutls.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz            10% |***                            | 95568   0:00:08 ETA
gnutls.tcz            30% |*********                      |   263k  0:00:04 ETA
gnutls.tcz            56% |*****************              |   487k  0:00:02 ETA
gnutls.tcz            89% |***************************    |   766k  0:00:00 ETA
gnutls.tcz            99% |****************************** |   859k  0:00:00 ETA
gnutls.tcz           100% |*******************************|   860k  0:00:00 ETA

gnutls.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
Downloading: wget.tcz
touch: /usr/local/tce.installed/gnutls: Permission denied
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz              33% |**********                     | 70952   0:00:02 ETA
wget.tcz             100% |*******************************|   208k  0:00:00 ETA

wget.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/wget: Permission denied
 ---> 71011cc004d8
Removing intermediate container c03a58d0bf58
Step 3/9 : USER root
 ---> Running in 9a16866a4845
 ---> 187b334da2f5
Removing intermediate container 9a16866a4845
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in a2c76f6a6244
 ---> 1b9f68cd722c
Removing intermediate container a2c76f6a6244
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 3c94099c37ea
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   50% |***************                |   927k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 5f41a332079b
Removing intermediate container 3c94099c37ea
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 670e86bf485b
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/9 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/9 : RUN tce-load -wic         ncurses         openssl
 ---> Running in 0e30bd99f059
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           15% |****                           | 27512   0:00:05 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz            4% |*                              | 52128   0:00:21 ETA
openssl.tcz           30% |*********                      |   349k  0:00:04 ETA
openssl.tcz           63% |*******************            |   716k  0:00:01 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
 ---> fcbcf7fce59e
Removing intermediate container 0e30bd99f059
Step 3/9 : USER root
 ---> Running in 0c2d12bc14d1
 ---> cb1e56a61803
Removing intermediate container 0c2d12bc14d1
Step 4/9 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in aa0d660963a9
 ---> fb55187c0d41
Removing intermediate container aa0d660963a9
Step 5/9 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 011a9644761d
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   11% |***                            |   209k  0:00:07 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> a7114931fbf7
Removing intermediate container 011a9644761d
Step 6/9 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 3efc8577fbb2
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/10 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/10 : RUN tce-load -wic         ncurses RUN tce-load -wic         openssl-dev
 ---> Running in da08a4e68c19
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz            7% |**                             | 13032   0:00:12 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
Downloading: RUN.tcz
openssl-dev.tcz.dep OK
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: RUN.tcz.md5.txt: No such file or directory
Error on RUN.tcz
 ---> 5daa34d47381
Removing intermediate container da08a4e68c19
Step 3/10 : RUN tce-load -wic         squashfs-tools
 ---> Running in 33a623ded44d
Downloading: squashfs-tools.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
squashfs-tools.tcz   100% |*******************************| 94208   0:00:00 ETA

squashfs-tools.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/squashfs-tools: Permission denied
 ---> 4f0430fcdd82
Removing intermediate container 33a623ded44d
Step 4/10 : USER root
 ---> Running in 1ac72c9c65bb
 ---> 0459b7b20800
Removing intermediate container 1ac72c9c65bb
Step 5/10 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in fd40e374e239
 ---> 532223dd069a
Removing intermediate container fd40e374e239
Step 6/10 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 71f09ed1441d
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   27% |********                       |   500k  0:00:02 ETA
j805_linux64.tar.gz   83% |*************************      |  1515k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 969f20f30839
Removing intermediate container 71f09ed1441d
Step 7/10 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 6fa782167679
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/11 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/11 : RUN tce-load -wic         squashfs-tools
 ---> Running in 02183a5bd98a
Downloading: squashfs-tools.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
squashfs-tools.tcz   100% |*******************************| 94208   0:00:00 ETA

squashfs-tools.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/squashfs-tools: Permission denied
 ---> 41fc11167a09
Removing intermediate container 02183a5bd98a
Step 3/11 : RUN tce-load -wic         ncurses
 ---> Running in 33978040a410
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           56% |*****************              | 99912   0:00:00 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
 ---> 76e0ce22acac
Removing intermediate container 33978040a410
Step 4/11 : RUN tce-load -wic         openssl-dev
 ---> Running in 0514f3229592
openssl-dev.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz            1% |                               | 13032   0:01:27 ETA
openssl.tcz           19% |******                         |   223k  0:00:08 ETA
openssl.tcz           46% |**************                 |   523k  0:00:03 ETA
openssl.tcz           87% |***************************    |   994k  0:00:00 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: openssl-dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl-dev.tcz        3% |*                              | 63712   0:00:26 ETA
openssl-dev.tcz       10% |***                            |   178k  0:00:17 ETA
openssl-dev.tcz       20% |******                         |   347k  0:00:11 ETA
openssl-dev.tcz       30% |*********                      |   528k  0:00:09 ETA
openssl-dev.tcz       41% |************                   |   715k  0:00:07 ETA
openssl-dev.tcz       51% |***************                |   883k  0:00:05 ETA
openssl-dev.tcz       59% |******************             |  1026k  0:00:04 ETA
openssl-dev.tcz       70% |*********************          |  1211k  0:00:03 ETA
openssl-dev.tcz       83% |*************************      |  1438k  0:00:01 ETA
openssl-dev.tcz       96% |*****************************  |  1658k  0:00:00 ETA
openssl-dev.tcz      100% |*******************************|  1720k  0:00:00 ETA

openssl-dev.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl-dev: Permission denied
 ---> 00a6790fdd73
Removing intermediate container 0514f3229592
Step 5/11 : USER root
 ---> Running in ff6b86eddcd5
 ---> 03da51c47091
Removing intermediate container ff6b86eddcd5
Step 6/11 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 7fd5c9aa1c2e
 ---> eae2daad9476
Removing intermediate container 7fd5c9aa1c2e
Step 7/11 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 331ba493045d
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   60% |******************             |  1106k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> dba0427a60d2
Removing intermediate container 331ba493045d
Step 8/11 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 8ecfc4cc81bc
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/11 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/11 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/11 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/11 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/11 : USER root
 ---> Using cache
 ---> 03da51c47091
Step 6/11 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> eae2daad9476
Step 7/11 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> dba0427a60d2
Step 8/11 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && curl http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs -o main.ijs
 ---> Running in f2caf1101c88
/bin/sh: curl: not found
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && curl http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs -o main.ijs' returned a non-zero code: 127
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic ]         curl
 ---> Running in c62585b4f093
Downloading: ].tcz
curl.tcz.dep OK
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: ].tcz.md5.txt: No such file or directory
Error on ].tcz
libssh2.tcz.dep OK
libgcrypt.tcz.dep OK
ca-certificates.tcz.dep OK
 ---> 07750c078797
Removing intermediate container c62585b4f093
Step 6/12 : USER root
 ---> Running in 67f393d2ab35
 ---> d987ed526af5
Removing intermediate container 67f393d2ab35
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 1a78fe7db48e
 ---> 50b223e307e2
Removing intermediate container 1a78fe7db48e
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in cc12d71183e4
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   15% |****                           |   285k  0:00:05 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> dfff2c29dc4e
Removing intermediate container cc12d71183e4
Step 9/12 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && curl http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs -o main.ijs
 ---> Running in f505306e9575
/bin/sh: curl: not found
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && curl http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs -o main.ijs' returned a non-zero code: 127
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         curl
 ---> Running in d757abc8fdd4
curl.tcz.dep OK
libssh2.tcz.dep OK
libgcrypt.tcz.dep OK
ca-certificates.tcz.dep OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz   33% |**********                     | 66608   0:00:02 ETA
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
Downloading: libgpg-error.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgpg-error.tcz     100% |*******************************| 45056   0:00:00 ETA

libgpg-error.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgpg-error: Permission denied
Downloading: libgcrypt.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgcrypt.tcz          7% |**                             | 28960   0:00:11 ETA
libgcrypt.tcz         93% |*****************************  |   340k  0:00:00 ETA
libgcrypt.tcz        100% |*******************************|   364k  0:00:00 ETA

libgcrypt.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgcrypt: Permission denied
Downloading: libssh2.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libssh2.tcz          100% |*******************************| 94208   0:00:00 ETA

libssh2.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libssh2: Permission denied
Downloading: libidn.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libidn.tcz            16% |*****                          | 13032   0:00:04 ETA
libidn.tcz           100% |*******************************| 77824   0:00:00 ETA

libidn.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libidn: Permission denied
Downloading: curl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
curl.tcz              23% |*******                        | 81088   0:00:03 ETA
curl.tcz              82% |*************************      |   277k  0:00:00 ETA
curl.tcz             100% |*******************************|   336k  0:00:00 ETA

curl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/curl: Permission denied
 ---> 4b64cb3def07
Removing intermediate container d757abc8fdd4
Step 6/12 : USER root
 ---> Running in 072f5fad9c31
 ---> 688688b860f4
Removing intermediate container 072f5fad9c31
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in a2449813a608
 ---> 89492c61120d
Removing intermediate container a2449813a608
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 29204161efb7
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 575ad940c81d
Removing intermediate container 29204161efb7
Step 9/12 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && curl http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs -o main.ijs
 ---> Running in c3b4144fbe99
/bin/sh: curl: not found
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && curl http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs -o main.ijs' returned a non-zero code: 127
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         curl
 ---> Using cache
 ---> 4b64cb3def07
Step 6/12 : USER root
 ---> Using cache
 ---> 688688b860f4
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 89492c61120d
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 575ad940c81d
Step 9/12 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 46a4d3153215
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Running in e719826e9624
wget.tcz.dep OK
gnutls.tcz.dep OK
libgcrypt.tcz.dep OK
nettle.tcz.dep OK
p11-kit.tcz.dep OK
pcre.tcz.dep OK
Downloading: bzip2-lib.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
bzip2-lib.tcz        100% |*******************************| 28672   0:00:00 ETA

bzip2-lib.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/bzip2-lib: Permission denied
Downloading: pcre.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz              15% |****                           | 28960   0:00:05 ETA
pcre.tcz             100% |*******************************|   184k  0:00:00 ETA

pcre.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/pcre: Permission denied
Downloading: libidn.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libidn.tcz            93% |****************************   | 72400   0:00:00 ETA
libidn.tcz           100% |*******************************| 77824   0:00:00 ETA

libidn.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libidn: Permission denied
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA

libffi.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libffi: Permission denied
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz         100% |*******************************| 57344   0:00:00 ETA

libtasn1.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
Downloading: p11-kit.tcz
touch: /usr/local/tce.installed/libtasn1: Permission denied
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz           26% |********                       | 79640   0:00:02 ETA
p11-kit.tcz          100% |*******************************|   292k  0:00:00 ETA

p11-kit.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/p11-kit: Permission denied
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz               31% |*********                      | 62264   0:00:02 ETA
gmp.tcz              100% |*******************************|   196k  0:00:00 ETA

gmp.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gmp: Permission denied
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz            28% |********                       | 75296   0:00:02 ETA
nettle.tcz           100% |*******************************|   256k  0:00:00 ETA

nettle.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/nettle: Permission denied
Downloading: libgpg-error.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgpg-error.tcz     100% |*******************************| 45056   0:00:00 ETA

libgpg-error.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgpg-error: Permission denied
Downloading: libgcrypt.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgcrypt.tcz          3% |*                              | 13032   0:00:27 ETA
libgcrypt.tcz         71% |**********************         |   261k  0:00:00 ETA
libgcrypt.tcz        100% |*******************************|   364k  0:00:00 ETA

libgcrypt.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgcrypt: Permission denied
Downloading: gnutls.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz            22% |*******                        |   196k  0:00:03 ETA
gnutls.tcz            48% |***************                |   418k  0:00:02 ETA
gnutls.tcz            83% |*************************      |   718k  0:00:00 ETA
gnutls.tcz           100% |*******************************|   860k  0:00:00 ETA

gnutls.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gnutls: Permission denied
Downloading: wget.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz              40% |************                   | 85432   0:00:01 ETA
wget.tcz             100% |*******************************|   208k  0:00:00 ETA

wget.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/wget: Permission denied
 ---> 2237113fabb3
Removing intermediate container e719826e9624
Step 6/12 : USER root
 ---> Running in bb486d99c6c1
 ---> 42e941a6c3df
Removing intermediate container bb486d99c6c1
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in ecd83e1d4200
 ---> 123ad03b0a12
Removing intermediate container ecd83e1d4200
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 655b9822a9bb
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   87% |***************************    |  1584k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 040bec26cccd
Removing intermediate container 655b9822a9bb
Step 9/12 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 7413492f62f2
Connecting to raw.githubusercontent.com (151.101.56.133:80)
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget http://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 12ad99c0b333
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home/j64-805     && mkdir temp     && cd temp     && ls temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in e48f514dc4b7
ls: temp: No such file or directory
The command '/bin/sh -c cd /home/j64-805     && mkdir temp     && cd temp     && ls temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home     && ls -al     && cd /j64-805     && mkdir temp     && cd temp     && ls temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 0ad0b93cf72e
total 16
drwxrwxr-x    1 root     root          4096 May 25 02:51 .
drwxr-xr-x    1 root     root          4096 May 25 02:56 ..
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 j64-805
drwxr-s---    4 tc       staff         4096 Apr 29 03:01 tc
/bin/sh: cd: line 1: can't cd to /j64-805
The command '/bin/sh -c cd /home     && ls -al     && cd /j64-805     && mkdir temp     && cd temp     && ls temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 2
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home     && ls -al     && cd j64-805     && mkdir temp     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in c6c2a0b6c6ae
total 16
drwxrwxr-x    1 root     root          4096 May 25 02:51 .
drwxr-xr-x    1 root     root          4096 May 25 02:58 ..
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 j64-805
drwxr-s---    4 tc       staff         4096 Apr 29 03:01 tc
/tmp/tce/optional/openssl.tcz.md5.txt
/tmp/tce/optional/openssl-dev.tcz
/tmp/tce/optional/openssl-dev.tcz.dep
/tmp/tce/optional/openssl.tcz
/tmp/tce/optional/openssl-dev.tcz.md5.txt
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && ls -al     && cd j64-805     && mkdir temp     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home     && ls -al     && cd j64-805     && mkdir temp     && ls -al     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 24ab0c90adb0
total 16
drwxrwxr-x    1 root     root          4096 May 25 02:51 .
drwxr-xr-x    1 root     root          4096 May 25 02:59 ..
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 j64-805
drwxr-s---    4 tc       staff         4096 Apr 29 03:01 tc
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 02:59 .
drwxrwxr-x    1 root     root          4096 May 25 02:51 ..
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 addons
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 system
drwxr-xr-x    2 root     root          4096 May 25 02:59 temp
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
/tmp/tce/optional/openssl.tcz.md5.txt
/tmp/tce/optional/openssl-dev.tcz
/tmp/tce/optional/openssl-dev.tcz.dep
/tmp/tce/optional/openssl.tcz
/tmp/tce/optional/openssl-dev.tcz.md5.txt
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && ls -al     && cd j64-805     && mkdir temp     && ls -al     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Error response from daemon: Unknown instruction: &&
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown -u 1000 temp     && chown -g 1000 temp     && ls -al     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 68cec4432076
total 16
drwxrwxr-x    1 root     root          4096 May 25 02:51 .
drwxr-xr-x    1 root     root          4096 May 25 03:01 ..
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 j64-805
drwxr-s---    4 tc       staff         4096 Apr 29 03:01 tc
chown: invalid option -- 'u'
BusyBox v1.25.1 (2016-11-15 12:14:29 UTC) multi-call binary.

Usage: chown [-RhLHPcvf]... USER[:[GRP]] FILE...

Change the owner and/or group of each FILE to USER and/or GRP

	-R	Recurse
	-h	Affect symlinks instead of symlink targets
	-L	Traverse all symlinks to directories
	-H	Traverse symlinks on command line only
	-P	Don't traverse symlinks (default)
	-c	List changed files
	-v	List all files
	-f	Hide errors
The command '/bin/sh -c cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown -u 1000 temp     && chown -g 1000 temp     && ls -al     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in c70eef44bd04
total 16
drwxrwxr-x    1 root     root          4096 May 25 02:51 .
drwxr-xr-x    1 root     root          4096 May 25 03:02 ..
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 j64-805
drwxr-s---    4 tc       staff         4096 Apr 29 03:01 tc
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 03:02 .
drwxrwxr-x    1 root     root          4096 May 25 02:51 ..
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 addons
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 system
drwxr-xr-x    2 1000     1000          4096 May 25 03:02 temp
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
/tmp/tce/optional/openssl.tcz.md5.txt
/tmp/tce/optional/openssl-dev.tcz
/tmp/tce/optional/openssl-dev.tcz.dep
/tmp/tce/optional/openssl.tcz
/tmp/tce/optional/openssl-dev.tcz.md5.txt
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && find / -name "*openssl*" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         wget
 ---> Using cache
 ---> 2237113fabb3
Step 6/12 : USER root
 ---> Using cache
 ---> 42e941a6c3df
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 123ad03b0a12
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 040bec26cccd
Step 9/12 : RUN cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && find / -name "ssl_helper" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in d453b73dd58c
total 16
drwxrwxr-x    1 root     root          4096 May 25 02:51 .
drwxr-xr-x    1 root     root          4096 May 25 03:03 ..
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 j64-805
drwxr-s---    4 tc       staff         4096 Apr 29 03:01 tc
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 03:03 .
drwxrwxr-x    1 root     root          4096 May 25 02:51 ..
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 addons
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 02:51 system
drwxr-xr-x    2 1000     1000          4096 May 25 03:03 temp
drwxr-xr-x    3 1000     1000          4096 May 25 02:51 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && find / -name "ssl_helper" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/12 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/12 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/12 : RUN tce-load -wic         ca-certificates
 ---> Running in ce180b887a8e
ca-certificates.tcz.dep OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz   13% |****                           | 27512   0:00:06 ETA
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
 ---> 454f2021736f
Removing intermediate container ce180b887a8e
Step 6/12 : USER root
 ---> Running in d6e6971f5dd3
 ---> 129a3d82d1d6
Removing intermediate container d6e6971f5dd3
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 071652fe4b01
 ---> 7acfd02f03ce
Removing intermediate container 071652fe4b01
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in a204f4109619
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz    2% |                               | 43177   0:00:42 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> ddf173520140
Removing intermediate container a204f4109619
Step 9/12 : RUN cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && find / -name "ssl_helper" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 00e1e3d76ad3
total 16
drwxrwxr-x    1 root     root          4096 May 25 03:10 .
drwxr-xr-x    1 root     root          4096 May 25 03:10 ..
drwxr-xr-x    6 1000     1000          4096 May 25 03:10 j64-805
drwxr-s---    4 tc       staff         4096 Apr 29 03:01 tc
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 03:10 .
drwxrwxr-x    1 root     root          4096 May 25 03:10 ..
drwxr-xr-x    3 1000     1000          4096 May 25 03:10 addons
drwxr-xr-x    3 1000     1000          4096 May 25 03:10 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 03:10 system
drwxr-xr-x    2 1000     1000          4096 May 25 03:10 temp
drwxr-xr-x    3 1000     1000          4096 May 25 03:10 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && ls -al     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && find / -name "ssl_helper" -print     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/13 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/13 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/13 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/13 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/13 : RUN tce-load -wic         ca-certificates
 ---> Using cache
 ---> 454f2021736f
Step 6/13 : RUN tce-load -wic         wget
 ---> Running in 5120663af705
wget.tcz.dep OK
gnutls.tcz.dep OK
libgcrypt.tcz.dep OK
nettle.tcz.dep OK
p11-kit.tcz.dep OK
pcre.tcz.dep OK
Downloading: bzip2-lib.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
bzip2-lib.tcz        100% |*******************************| 28672   0:00:00 ETA

bzip2-lib.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
Downloading: pcre.tcz
touch: /usr/local/tce.installed/bzip2-lib: Permission denied
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz               6% |**                             | 13032   0:00:13 ETA
pcre.tcz              99% |****************************** |   183k  0:00:00 ETA
pcre.tcz             100% |*******************************|   184k  0:00:00 ETA

pcre.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/pcre: Permission denied
Downloading: libidn.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libidn.tcz            16% |*****                          | 13032   0:00:04 ETA
libidn.tcz           100% |*******************************| 77824   0:00:00 ETA

libidn.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libidn: Permission denied
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA

libffi.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libffi: Permission denied
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz          22% |*******                        | 13032   0:00:03 ETA
libtasn1.tcz         100% |*******************************| 57344   0:00:00 ETA

libtasn1.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libtasn1: Permission denied
Downloading: p11-kit.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz           56% |*****************              |   165k  0:00:00 ETA
p11-kit.tcz          100% |*******************************|   292k  0:00:00 ETA

p11-kit.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/p11-kit: Permission denied
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz               60% |******************             |   118k  0:00:00 ETA
gmp.tcz              100% |*******************************|   196k  0:00:00 ETA

gmp.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gmp: Permission denied
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz            41% |*************                  |   107k  0:00:01 ETA
nettle.tcz           100% |*******************************|   256k  0:00:00 ETA

nettle.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/nettle: Permission denied
Downloading: libgpg-error.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgpg-error.tcz     100% |*******************************| 45056   0:00:00 ETA

libgpg-error.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgpg-error: Permission denied
Downloading: libgcrypt.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgcrypt.tcz         34% |**********                     |   127k  0:00:01 ETA
libgcrypt.tcz        100% |*******************************|   364k  0:00:00 ETA

libgcrypt.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgcrypt: Permission denied
Downloading: gnutls.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz             7% |**                             | 66608   0:00:12 ETA
gnutls.tcz            19% |*****                          |   165k  0:00:08 ETA
gnutls.tcz            29% |*********                      |   254k  0:00:07 ETA
gnutls.tcz            36% |***********                    |   316k  0:00:06 ETA
gnutls.tcz            53% |****************               |   463k  0:00:04 ETA
gnutls.tcz            73% |**********************         |   632k  0:00:02 ETA
gnutls.tcz            98% |****************************** |   848k  0:00:00 ETA
gnutls.tcz           100% |*******************************|   860k  0:00:00 ETA

gnutls.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gnutls: Permission denied
Downloading: wget.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz              16% |*****                          | 36200   0:00:04 ETA
wget.tcz              77% |************************       |   161k  0:00:00 ETA
wget.tcz             100% |*******************************|   208k  0:00:00 ETA

wget.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/wget: Permission denied
 ---> bcd43faf579c
Removing intermediate container 5120663af705
Step 7/13 : USER root
 ---> Running in d97cfe748497
 ---> 683f30ca1ffa
Removing intermediate container d97cfe748497
Step 8/13 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 5138b8eff85e
 ---> 3d106b4be744
Removing intermediate container 5138b8eff85e
Step 9/13 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in a386c00d44a0
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz   81% |*************************      |  1491k  0:00:00 ETA
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 47a1128b5dd7
Removing intermediate container a386c00d44a0
Step 10/13 : RUN cd /home     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 8e918f5b5cb0
wget is /usr/bin/wget
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 03:19 .
drwxrwxr-x    1 root     root          4096 May 25 03:19 ..
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 addons
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 03:19 system
drwxr-xr-x    2 1000     1000          4096 May 25 03:19 temp
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Error response from daemon: Unknown instruction: &&
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/13 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/13 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/13 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/13 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/13 : RUN tce-load -wic         ca-certificates
 ---> Using cache
 ---> 454f2021736f
Step 6/13 : RUN tce-load -wic         wget
 ---> Using cache
 ---> bcd43faf579c
Step 7/13 : USER root
 ---> Using cache
 ---> 683f30ca1ffa
Step 8/13 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 3d106b4be744
Step 9/13 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 47a1128b5dd7
Step 10/13 : RUN cd /home     && ls -al /usr/local/tce.installed/     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in b2f70fc66acd
total 8
drwxrwxr-x    2 root     root          4096 Apr 23 15:53 .
drwxrwxr-x    5 root     root          4096 Apr 23 15:53 ..
wget is /usr/bin/wget
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 03:22 .
drwxrwxr-x    1 root     root          4096 May 25 03:19 ..
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 addons
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 03:19 system
drwxr-xr-x    2 1000     1000          4096 May 25 03:22 temp
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && ls -al /usr/local/tce.installed/     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/13 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/13 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 41fc11167a09
Step 3/13 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 76e0ce22acac
Step 4/13 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 00a6790fdd73
Step 5/13 : RUN tce-load -wic         ca-certificates
 ---> Using cache
 ---> 454f2021736f
Step 6/13 : RUN tce-load -wic         wget
 ---> Using cache
 ---> bcd43faf579c
Step 7/13 : USER root
 ---> Using cache
 ---> 683f30ca1ffa
Step 8/13 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 3d106b4be744
Step 9/13 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 47a1128b5dd7
Step 10/13 : RUN cd /home     && find / -name "wget*" -print     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 44954f87f961
/usr/bin/wget
/tmp/tce/optional/wget.tcz.dep
/tmp/tce/optional/wget.tcz.md5.txt
/tmp/tce/optional/wget.tcz
wget is /usr/bin/wget
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 03:24 .
drwxrwxr-x    1 root     root          4096 May 25 03:19 ..
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 addons
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 03:19 system
drwxr-xr-x    2 1000     1000          4096 May 25 03:24 temp
drwxr-xr-x    3 1000     1000          4096 May 25 03:19 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && find / -name "wget*" -print     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/15 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/15 : RUN ls -l /usr/local/bin/wget     && type wget
 ---> Running in a39ebaaf970d
ls: /usr/local/bin/wget: No such file or directory
The command '/bin/sh -c ls -l /usr/local/bin/wget     && type wget' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/15 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/15 : RUN ls -l /usr/bin/wget     && type wget
 ---> Running in d3b91860a9bc
lrwxrwxrwx    1 root     root            17 Apr 23 15:53 /usr/bin/wget -> ../../bin/busybox
wget is /usr/bin/wget
 ---> 78ba42fae505
Removing intermediate container d3b91860a9bc
Step 3/15 : RUN tce-load -wic         squashfs-tools
 ---> Running in 98611399561b
Downloading: squashfs-tools.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
squashfs-tools.tcz    13% |****                           | 13032   0:00:06 ETA
squashfs-tools.tcz   100% |*******************************| 94208   0:00:00 ETA

squashfs-tools.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/squashfs-tools: Permission denied
 ---> c06d522b7d30
Removing intermediate container 98611399561b
Step 4/15 : RUN tce-load -wic         ncurses
 ---> Running in a2abf02892b8
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           32% |**********                     | 57920   0:00:02 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
 ---> 53567fb3e6b7
Removing intermediate container a2abf02892b8
Step 5/15 : RUN tce-load -wic         openssl-dev
 ---> Running in 43b2172f590d
openssl-dev.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz           16% |*****                          |   186k  0:00:05 ETA
openssl.tcz           37% |***********                    |   428k  0:00:03 ETA
openssl.tcz           57% |*****************              |   648k  0:00:02 ETA
openssl.tcz           71% |**********************         |   814k  0:00:01 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: openssl-dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl-dev.tcz        1% |                               | 27512   0:01:03 ETA
openssl-dev.tcz       38% |***********                    |   654k  0:00:03 ETA
openssl-dev.tcz       91% |****************************   |  1576k  0:00:00 ETA
openssl-dev.tcz      100% |*******************************|  1720k  0:00:00 ETA

openssl-dev.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl-dev: Permission denied
 ---> d2374c5812ce
Removing intermediate container 43b2172f590d
Step 6/15 : RUN tce-load -wic         ca-certificates
 ---> Running in 9a2533abd1e2
ca-certificates.tcz.dep OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
 ---> bfe122c602fd
Removing intermediate container 9a2533abd1e2
Step 7/15 : RUN tce-load -wic         wget
 ---> Running in 48113760e922
wget.tcz.dep OK
gnutls.tcz.dep OK
libgcrypt.tcz.dep OK
nettle.tcz.dep OK
p11-kit.tcz.dep OK
pcre.tcz.dep OK
Downloading: bzip2-lib.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
bzip2-lib.tcz        100% |*******************************| 28672   0:00:00 ETA

bzip2-lib.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/bzip2-lib: Permission denied
Downloading: pcre.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz              33% |**********                     | 63712   0:00:01 ETA
pcre.tcz             100% |*******************************|   184k  0:00:00 ETA

pcre.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/pcre: Permission denied
Downloading: libidn.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libidn.tcz           100% |*******************************| 77824   0:00:00 ETA

libidn.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libidn: Permission denied
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA

libffi.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libffi: Permission denied
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz         100% |*******************************| 57344   0:00:00 ETA

libtasn1.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libtasn1: Permission denied
Downloading: p11-kit.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz           27% |********                       | 82536   0:00:02 ETA
p11-kit.tcz          100% |*******************************|   292k  0:00:00 ETA

p11-kit.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/p11-kit: Permission denied
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz               52% |****************               |   103k  0:00:00 ETA
gmp.tcz              100% |*******************************|   196k  0:00:00 ETA

gmp.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gmp: Permission denied
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz            65% |********************           |   168k  0:00:00 ETA
nettle.tcz           100% |*******************************|   256k  0:00:00 ETA

nettle.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/nettle: Permission denied
Downloading: libgpg-error.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgpg-error.tcz     100% |*******************************| 45056   0:00:00 ETA

libgpg-error.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgpg-error: Permission denied
Downloading: libgcrypt.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgcrypt.tcz         74% |***********************        |   271k  0:00:00 ETA
libgcrypt.tcz        100% |*******************************|   364k  0:00:00 ETA

libgcrypt.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
Downloading: gnutls.tcz
touch: /usr/local/tce.installed/libgcrypt: Permission denied
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz            10% |***                            | 95568   0:00:08 ETA
gnutls.tcz            38% |***********                    |   332k  0:00:03 ETA
gnutls.tcz            72% |**********************         |   622k  0:00:01 ETA
gnutls.tcz           100% |*******************************|   860k  0:00:00 ETA

gnutls.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gnutls: Permission denied
Downloading: wget.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz              69% |*********************          |   144k  0:00:00 ETA
wget.tcz             100% |*******************************|   208k  0:00:00 ETA

wget.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/wget: Permission denied
 ---> 4e20b7737423
Removing intermediate container 48113760e922
Step 8/15 : RUN ls -l /usr/bin/wget     && type wget
 ---> Running in f1358fba7c10
lrwxrwxrwx    1 root     root            17 Apr 23 15:53 /usr/bin/wget -> ../../bin/busybox
wget is /usr/bin/wget
 ---> 584342af1f0b
Removing intermediate container f1358fba7c10
Step 9/15 : USER root
 ---> Running in 9645b019b126
 ---> c8eaf4ac4baf
Removing intermediate container 9645b019b126
Step 10/15 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in d4f376120a9e
 ---> 268eccc4cb4d
Removing intermediate container d4f376120a9e
Step 11/15 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 2ae8de79095f
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 3aab5d0b11da
Removing intermediate container 2ae8de79095f
Step 12/15 : RUN cd /home     && find / -name "wget*" -print     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 21b603f8e592
/usr/bin/wget
/tmp/tce/optional/wget.tcz.dep
/tmp/tce/optional/wget.tcz.md5.txt
/tmp/tce/optional/wget.tcz
wget is /usr/bin/wget
total 44
drwxr-xr-x    1 1000     1000          4096 May 25 11:46 .
drwxrwxr-x    1 root     root          4096 May 25 11:46 ..
drwxr-xr-x    3 1000     1000          4096 May 25 11:46 addons
drwxr-xr-x    3 1000     1000          4096 May 25 11:46 bin
-rwxr-xr-x    1 1000     1000           107 Mar  3 14:41 jconsole.sh
-rwxr-xr-x    1 1000     1000           126 Mar  3 14:41 jqt.sh
-rw-r--r--    1 1000     1000           397 Mar  3 14:41 readme.txt
drwxr-xr-x    6 1000     1000          4096 May 25 11:46 system
drwxr-xr-x    2 1000     1000          4096 May 25 11:46 temp
drwxr-xr-x    3 1000     1000          4096 May 25 11:46 tools
-rwxr-xr-x    1 1000     1000           153 Mar  3 14:41 updatejqt.sh
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && find / -name "wget*" -print     && type wget     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && ls -al     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/15 : FROM tatsushid/tinycore:latest
 ---> 96e7000f5a9f
Step 2/15 : USER tc
 ---> Running in 792a92255c1a
 ---> 510922e63535
Removing intermediate container 792a92255c1a
Step 3/15 : RUN tce-load -wic         squashfs-tools
 ---> Running in f42bb8783b97
Downloading: squashfs-tools.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
squashfs-tools.tcz   100% |*******************************| 94208   0:00:00 ETA

squashfs-tools.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/squashfs-tools: Permission denied
 ---> 251fca34ed48
Removing intermediate container f42bb8783b97
Step 4/15 : RUN tce-load -wic         ncurses
 ---> Running in 7b281e3d3e5e
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz           20% |******                         | 36200   0:00:03 ETA
ncurses.tcz          100% |*******************************|   172k  0:00:00 ETA

ncurses.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ncurses: Permission denied
 ---> 17a28246601b
Removing intermediate container 7b281e3d3e5e
Step 5/15 : RUN tce-load -wic         openssl-dev
 ---> Running in a97e436e398f
openssl-dev.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz           12% |***                            |   142k  0:00:06 ETA
openssl.tcz           24% |*******                        |   279k  0:00:06 ETA
openssl.tcz           43% |*************                  |   497k  0:00:03 ETA
openssl.tcz           75% |***********************        |   849k  0:00:01 ETA
openssl.tcz          100% |*******************************|  1132k  0:00:00 ETA

openssl.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: openssl-dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl-dev.tcz        2% |                               | 47784   0:00:35 ETA
openssl-dev.tcz       17% |*****                          |   292k  0:00:09 ETA
openssl-dev.tcz       36% |***********                    |   630k  0:00:05 ETA
openssl-dev.tcz       62% |*******************            |  1069k  0:00:02 ETA
openssl-dev.tcz       90% |***************************    |  1548k  0:00:00 ETA
openssl-dev.tcz      100% |*******************************|  1720k  0:00:00 ETA

openssl-dev.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl-dev: Permission denied
 ---> 4fb21e1f2d55
Removing intermediate container a97e436e398f
Step 6/15 : RUN tce-load -wic         ca-certificates
 ---> Running in 7c5ec7049bf3
ca-certificates.tcz.dep OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/openssl: Permission denied
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ca-certificates.tcz    6% |**                             | 13032   0:00:14 ETA
ca-certificates.tcz  100% |*******************************|   196k  0:00:00 ETA

ca-certificates.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/ca-certificates: Permission denied
 ---> 464a2b9fd36e
Removing intermediate container 7c5ec7049bf3
Step 7/15 : RUN tce-load -wic         wget
 ---> Running in 4c802afa499a
wget.tcz.dep OK
gnutls.tcz.dep OK
libgcrypt.tcz.dep OK
nettle.tcz.dep OK
p11-kit.tcz.dep OK
pcre.tcz.dep OK
Downloading: bzip2-lib.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
bzip2-lib.tcz         45% |**************                 | 13032   0:00:01 ETA
bzip2-lib.tcz        100% |*******************************| 28672   0:00:00 ETA

bzip2-lib.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/bzip2-lib: Permission denied
Downloading: pcre.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz               6% |**                             | 13032   0:00:13 ETA
pcre.tcz             100% |*******************************|   184k  0:00:00 ETA

pcre.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/pcre: Permission denied
Downloading: libidn.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libidn.tcz           100% |*******************************| 77824   0:00:00 ETA

libidn.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libidn: Permission denied
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA

libffi.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libffi: Permission denied
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz         100% |*******************************| 57344   0:00:00 ETA

libtasn1.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libtasn1: Permission denied
Downloading: p11-kit.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz           16% |*****                          | 49232   0:00:05 ETA
p11-kit.tcz          100% |*******************************|   292k  0:00:00 ETA

p11-kit.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/p11-kit: Permission denied
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz               24% |*******                        | 49232   0:00:03 ETA
gmp.tcz              100% |*******************************|   196k  0:00:00 ETA

gmp.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gmp: Permission denied
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz            24% |*******                        | 65160   0:00:03 ETA
nettle.tcz           100% |*******************************|   256k  0:00:00 ETA

nettle.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/nettle: Permission denied
Downloading: libgpg-error.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgpg-error.tcz     100% |*******************************| 45056   0:00:00 ETA

libgpg-error.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgpg-error: Permission denied
Downloading: libgcrypt.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libgcrypt.tcz         36% |***********                    |   134k  0:00:01 ETA
libgcrypt.tcz        100% |*******************************|   364k  0:00:00 ETA

libgcrypt.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/libgcrypt: Permission denied
Downloading: gnutls.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz             4% |*                              | 37648   0:00:22 ETA
gnutls.tcz            42% |*************                  |   366k  0:00:02 ETA
gnutls.tcz            78% |************************       |   671k  0:00:00 ETA
gnutls.tcz           100% |*******************************|   860k  0:00:00 ETA

gnutls.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/gnutls: Permission denied
Downloading: wget.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz              72% |**********************         |   151k  0:00:00 ETA
wget.tcz             100% |*******************************|   208k  0:00:00 ETA

wget.tcz: OK
sudo: /usr/local/bin/unsquashfs: command not found
rmdir: '/mnt/test': Permission denied
touch: /usr/local/tce.installed/wget: Permission denied
 ---> 4d68eee7bec0
Removing intermediate container 4c802afa499a
Step 8/15 : RUN ls -l /usr/bin/wget     && type wget
 ---> Running in d73fd1d24534
lrwxrwxrwx    1 root     root            17 Apr 23 15:53 /usr/bin/wget -> ../../bin/busybox
wget is /usr/bin/wget
 ---> 5ea7e729a2af
Removing intermediate container d73fd1d24534
Step 9/15 : USER root
 ---> Running in 7eaf3d5aed13
 ---> 5b29659ff202
Removing intermediate container 7eaf3d5aed13
Step 10/15 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 1430408bf71d
 ---> 9eb516c8a796
Removing intermediate container 1430408bf71d
Step 11/15 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in fd9e8de28575
Connecting to www.jsoftware.com (52.23.108.158:80)
j805_linux64.tar.gz  100% |*******************************|  1819k  0:00:00 ETA

 ---> 6e9961eb2a2b
Removing intermediate container fd9e8de28575
Step 12/15 : RUN cd /home     && find / -name "wget*" -print     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 9263b829a311
/usr/bin/wget
/tmp/tce/optional/wget.tcz.dep
/tmp/tce/optional/wget.tcz.md5.txt
/tmp/tce/optional/wget.tcz
Connecting to raw.githubusercontent.com (151.101.56.133:443)
wget: can't execute 'ssl_helper': No such file or directory
wget: error getting response: Connection reset by peer
The command '/bin/sh -c cd /home     && find / -name "wget*" -print     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs' returned a non-zero code: 1
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/15 : FROM tatsushid/tinycore:7.2-x86_64
7.2-x86_64: Pulling from tatsushid/tinycore
56cf7ff40179: Pull complete 
8d27045199bf: Pull complete 
d7f4963a6905: Pull complete 
Digest: sha256:b652d7e635d1197886426638cf421f45cb40d14e4384953e93332a3114993c5b
Status: Downloaded newer image for tatsushid/tinycore:7.2-x86_64
 ---> 1e1259755d99
Step 2/15 : USER tc
 ---> Running in 19ffba9922a5
 ---> cec1a882a380
Removing intermediate container 19ffba9922a5
Step 3/15 : RUN tce-load -wic         squashfs-tools
 ---> Running in b67ed085fe91
Downloading: squashfs-tools.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
squashfs-tools.tcz   100% |*******************************|   100k  0:00:00 ETA
squashfs-tools.tcz: OK
Parallel unsquashfs: Using 4 processors
2 inodes (49 blocks) to write

[=================================================================|] 49/49 100%

created 2 files
created 4 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> 428384824496
Removing intermediate container b67ed085fe91
Step 4/15 : RUN tce-load -wic         ncurses
 ---> Running in f2b6c52cc08c
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz          100% |*******************************|   196k  0:00:00 ETA
ncurses.tcz: OK
Parallel unsquashfs: Using 4 processors
39 inodes (135 blocks) to write

[===============================================================|] 135/135 100%

created 25 files
created 12 directories
created 14 symlinks
created 0 devices
created 0 fifos
 ---> 62f49c13301e
Removing intermediate container f2b6c52cc08c
Step 5/15 : RUN tce-load -wic         openssl-dev
 ---> Running in 06885fc288a3
openssl-dev.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz          100% |*******************************|  2100k  0:00:00 ETA
openssl.tcz: OK
Parallel unsquashfs: Using 4 processors
201 inodes (1169 blocks) to write

[=============================================================|] 1169/1169 100%

created 199 files
created 15 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: openssl-dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl-dev.tcz      100% |*******************************|  2108k  0:00:00 ETA
openssl-dev.tcz: OK
Parallel unsquashfs: Using 4 processors
80 inodes (1629 blocks) to write

[=============================================================|] 1629/1629 100%

created 80 files
created 7 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> 2c2d163b2418
Removing intermediate container 06885fc288a3
Step 6/15 : RUN tce-load -wic         ca-certificates
 ---> Running in ebcb10013c13
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: ca-certificates.tcz.md5.txt: No such file or directory
Error on ca-certificates.tcz
 ---> a1686ea14877
Removing intermediate container ebcb10013c13
Step 7/15 : RUN tce-load -wic         wget
 ---> Running in bd544428a111
wget.tcz.dep OK
gnutls.tcz.dep OK
p11-kit.tcz.dep OK
nettle.tcz.dep OK
Downloading: pcre.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz             100% |*******************************|   304k  0:00:00 ETA
pcre.tcz: OK
Parallel unsquashfs: Using 4 processors
17 inodes (205 blocks) to write

[===============================================================|] 205/205 100%

created 7 files
created 5 directories
created 10 symlinks
created 0 devices
created 0 fifos
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz              100% |*******************************|   240k  0:00:00 ETA
gmp.tcz: OK
Parallel unsquashfs: Using 4 processors
6 inodes (108 blocks) to write

[===============================================================|] 108/108 100%

created 2 files
created 4 directories
created 4 symlinks
created 0 devices
created 0 fifos
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz           100% |*******************************|   224k  0:00:00 ETA
nettle.tcz: OK
Parallel unsquashfs: Using 4 processors
10 inodes (12 blocks) to write

[=================================================================|] 12/12 100%

created 6 files
created 5 directories
created 4 symlinks
created 0 devices
created 0 fifos
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz         100% |*******************************| 45056   0:00:00 ETA
libtasn1.tcz: OK
Parallel unsquashfs: Using 4 processors
6 inodes (6 blocks) to write

[===================================================================|] 6/6 100%

created 4 files
created 5 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA
libffi.tcz: OK
Parallel unsquashfs: Using 4 processors
3 inodes (3 blocks) to write

[===================================================================|] 3/3 100%

created 1 files
created 4 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: p11-kit.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz          100% |*******************************|   216k  0:00:00 ETA
p11-kit.tcz: OK
Parallel unsquashfs: Using 4 processors
10 inodes (12 blocks) to write

[=================================================================|] 12/12 100%

created 7 files
created 12 directories
created 3 symlinks
created 0 devices
created 0 fifos
Downloading: gnutls.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz           100% |*******************************|   868k  0:00:00 ETA
gnutls.tcz: OK
Parallel unsquashfs: Using 4 processors
21 inodes (481 blocks) to write

[===============================================================|] 481/481 100%

created 13 files
created 5 directories
created 8 symlinks
created 0 devices
created 0 fifos
Downloading: wget.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz             100% |*******************************|   152k  0:00:00 ETA
wget.tcz: OK
Parallel unsquashfs: Using 4 processors
2 inodes (4 blocks) to write

[===================================================================|] 4/4 100%

created 2 files
created 5 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> f4177296cd77
Removing intermediate container bd544428a111
Step 8/15 : RUN ls -l /usr/bin/wget     && type wget
 ---> Running in d827d6cfe072
lrwxrwxrwx    1 root     root            17 Jul  8  2016 /usr/bin/wget -> ../../bin/busybox
wget is /usr/local/bin/wget
 ---> 45b45f99586b
Removing intermediate container d827d6cfe072
Step 9/15 : USER root
 ---> Running in d5ea6b18b5fe
 ---> a1d4ef0b78a8
Removing intermediate container d5ea6b18b5fe
Step 10/15 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 0adb7bcf6eb5
 ---> 401aa95f7dc0
Removing intermediate container 0adb7bcf6eb5
Step 11/15 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 5e149bf0a6ad
--2017-05-25 12:13:38--  http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz
Resolving www.jsoftware.com... 52.23.108.158
Connecting to www.jsoftware.com|52.23.108.158|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1862818 (1.8M) [application/x-gzip]
Saving to: 'j805_linux64.tar.gz'

     0K .......... .......... .......... .......... ..........  2%  413K 4s
    50K .......... .......... .......... .......... ..........  5%  934K 3s
   100K .......... .......... .......... .......... ..........  8% 3.69M 2s
   150K .......... .......... .......... .......... .......... 10% 3.65M 2s
   200K .......... .......... .......... .......... .......... 13% 1.32M 1s
   250K .......... .......... .......... .......... .......... 16% 3.50M 1s
   300K .......... .......... .......... .......... .......... 19% 1.34M 1s
   350K .......... .......... .......... .......... .......... 21% 3.64M 1s
   400K .......... .......... .......... .......... .......... 24% 3.82M 1s
   450K .......... .......... .......... .......... .......... 27% 3.71M 1s
   500K .......... .......... .......... .......... .......... 30% 1.63M 1s
   550K .......... .......... .......... .......... .......... 32% 3.29M 1s
   600K .......... .......... .......... .......... .......... 35% 3.75M 1s
   650K .......... .......... .......... .......... .......... 38% 2.24M 1s
   700K .......... .......... .......... .......... .......... 41% 3.61M 1s
   750K .......... .......... .......... .......... .......... 43% 3.76M 1s
   800K .......... .......... .......... .......... .......... 46% 3.25M 1s
   850K .......... .......... .......... .......... .......... 49% 2.61M 0s
   900K .......... .......... .......... .......... .......... 52% 2.95M 0s
   950K .......... .......... .......... .......... .......... 54% 2.80M 0s
  1000K .......... .......... .......... .......... .......... 57% 2.81M 0s
  1050K .......... .......... .......... .......... .......... 60% 2.03M 0s
  1100K .......... .......... .......... .......... .......... 63% 3.76M 0s
  1150K .......... .......... .......... .......... .......... 65% 2.85M 0s
  1200K .......... .......... .......... .......... .......... 68% 2.30M 0s
  1250K .......... .......... .......... .......... .......... 71% 2.87M 0s
  1300K .......... .......... .......... .......... .......... 74% 2.66M 0s
  1350K .......... .......... .......... .......... .......... 76% 2.57M 0s
  1400K .......... .......... .......... .......... .......... 79% 2.79M 0s
  1450K .......... .......... .......... .......... .......... 82% 2.91M 0s
  1500K .......... .......... .......... .......... .......... 85% 2.58M 0s
  1550K .......... .......... .......... .......... .......... 87% 2.95M 0s
  1600K .......... .......... .......... .......... .......... 90%  632K 0s
  1650K .......... .......... .......... .......... .......... 93% 5.10M 0s
  1700K .......... .......... .......... .......... .......... 96% 35.7M 0s
  1750K .......... .......... .......... .......... .......... 98% 2.26M 0s
  1800K .......... .........                                  100% 21.8M=0.8s

2017-05-25 12:13:39 (2.14 MB/s) - 'j805_linux64.tar.gz' saved [1862818/1862818]

 ---> 302aa369822c
Removing intermediate container 5e149bf0a6ad
Step 12/15 : RUN cd /home     && find / -name "wget*" -print     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 81f61ddd7ff9
/usr/bin/wget
/usr/local/bin/wget
/usr/local/tce.installed/wget
/usr/local/etc/wgetrc
/tmp/tce/optional/wget.tcz.dep
/tmp/tce/optional/wget.tcz.md5.txt
/tmp/tce/optional/wget.tcz
--2017-05-25 12:13:41--  https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
Resolving raw.githubusercontent.com... 151.101.56.133
Connecting to raw.githubusercontent.com|151.101.56.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 223 [text/plain]
Saving to: 'main.ijs'

     0K                                                       100% 2.11M=0s

2017-05-25 12:13:41 (2.11 MB/s) - 'main.ijs' saved [223/223]

 ---> 520be64bb70b
Removing intermediate container 81f61ddd7ff9
Step 13/15 : ENV CONFIG "BIND=:''localhost''"
 ---> Running in 2f1c2db55581
 ---> 4e8d26392841
Removing intermediate container 2f1c2db55581
Step 14/15 : ENV RUN ""
 ---> Running in f430193d7377
 ---> 4b2f6830e2b0
Removing intermediate container f430193d7377
Step 15/15 : ENTRYPOINT /home/j64-805/bin/jconsole -js "config_jhs_ =: 3 : '$CONFIG'" -js "$RUN" -js "load'~addons/ide/jhs/core.ijs'" "init_jhs_''"
 ---> Running in 2da7a4f88c56
 ---> dbe5e6b40745
Removing intermediate container 2da7a4f88c56
Successfully built dbe5e6b40745
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs:latest
Unable to find image 'tinycore-jhs:latest' locally
docker: Error response from daemon: repository tinycore-jhs not found: does not exist or no pull access.
See 'docker run --help'.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs:7.2-x86_64
Unable to find image 'tinycore-jhs:7.2-x86_64' locally
docker: Error response from daemon: repository tinycore-jhs not found: does not exist or no pull access.
See 'docker run --help'.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs-whisk:latest
Unable to find image 'tinycore-jhs-whisk:latest' locally
docker: Error response from daemon: repository tinycore-jhs-whisk not found: does not exist or no pull access.
See 'docker run --help'.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker image

Usage:	docker image COMMAND

Manage images

Options:
      --help   Print usage

Commands:
  build       Build an image from a Dockerfile
  history     Show the history of an image
  import      Import the contents from a tarball to create a filesystem image
  inspect     Display detailed information on one or more images
  load        Load an image from a tar archive or STDIN
  ls          List images
  prune       Remove unused images
  pull        Pull an image or a repository from a registry
  push        Push an image or a repository to a registry
  rm          Remove one or more images
  save        Save one or more images to a tar archive (streamed to STDOUT by default)
  tag         Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE

Run 'docker image COMMAND --help' for more information on a command.
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker image ls
REPOSITORY           TAG                 IMAGE ID            CREATED             SIZE
jhswhisk             latest              dbe5e6b40745        3 minutes ago       36.1 MB
<none>               <none>              6e9961eb2a2b        23 minutes ago      17.8 MB
<none>               <none>              3aab5d0b11da        30 minutes ago      17.8 MB
<none>               <none>              47a1128b5dd7        8 hours ago         17.8 MB
<none>               <none>              ddf173520140        9 hours ago         15.1 MB
<none>               <none>              040bec26cccd        9 hours ago         17.6 MB
<none>               <none>              575ad940c81d        9 hours ago         16.1 MB
<none>               <none>              dfff2c29dc4e        9 hours ago         14.9 MB
<none>               <none>              dba0427a60d2        9 hours ago         14.9 MB
<none>               <none>              969f20f30839        9 hours ago         12 MB
<none>               <none>              a7114931fbf7        9 hours ago         13.1 MB
<none>               <none>              5f41a332079b        12 hours ago        15.9 MB
<none>               <none>              85bd873dee19        12 hours ago        11.9 MB
<none>               <none>              e7b9ed0b8b23        12 hours ago        11.9 MB
<none>               <none>              f979323c71b1        12 hours ago        11.9 MB
<none>               <none>              e4a4e5881bd2        12 hours ago        11.9 MB
<none>               <none>              346c27736197        12 hours ago        13.3 MB
<none>               <none>              a2e50103c84f        12 hours ago        13.3 MB
<none>               <none>              df75aff47bbe        18 hours ago        5.91 MB
<none>               <none>              e9ad75936140        20 hours ago        13.3 MB
<none>               <none>              0482c09273f4        21 hours ago        14 MB
<none>               <none>              0d03b6fdeb1a        23 hours ago        14 MB
tatsushid/tinycore   latest              96e7000f5a9f        3 weeks ago         5.73 MB
swipl/swipl          latest              07a561a20626        4 weeks ago         263 MB
tatsushid/tinycore   7.2-x86_64          1e1259755d99        6 months ago        7.32 MB
joebo/tinycore-jhs   latest              44a4bc091610        6 months ago        14.6 MB
tatsushid/tinycore   7.0-x86_64          d269f68a5569        15 months ago       7.32 MB
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" jhswhisk:latest
not found: /tmp/main.ijs
|file name error: script
|       0!:0 y[4!:55<'y'
   Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=whiskadmin'' [ OKURL=:''main''" -e RUN="load '/home/j64-805/temp/main.ijs'" jhswhisk:latest
not found: /home/j64-805/addons/convert/json/json.ijs

J HTTP Server - init OK

Requires HTML 5 browser with javascript.

On many systems localhost is the same as 127.0.0.1. 

Ctrl+c here signals an interrupt to J.

A : separates ip address from port.

Access from another machine:
   http://SERVER_IP_ADDRESS:65001/jijx

Start a web browser on this machine and enter URL:
   http://127.0.0.1:65001/jijx

Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/15 : FROM tatsushid/tinycore:7.2-x86_64
 ---> 1e1259755d99
Step 2/15 : USER tc
 ---> Using cache
 ---> cec1a882a380
Step 3/15 : RUN tce-load -wic         squashfs-tools
 ---> Using cache
 ---> 428384824496
Step 4/15 : RUN tce-load -wic         ncurses
 ---> Using cache
 ---> 62f49c13301e
Step 5/15 : RUN tce-load -wic         openssl-dev
 ---> Using cache
 ---> 2c2d163b2418
Step 6/15 : RUN tce-load -wic         ca-certificates
 ---> Using cache
 ---> a1686ea14877
Step 7/15 : RUN tce-load -wic         wget
 ---> Using cache
 ---> f4177296cd77
Step 8/15 : RUN ls -l /usr/bin/wget     && type wget
 ---> Using cache
 ---> 45b45f99586b
Step 9/15 : USER root
 ---> Using cache
 ---> a1d4ef0b78a8
Step 10/15 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Using cache
 ---> 401aa95f7dc0
Step 11/15 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Using cache
 ---> 302aa369822c
Step 12/15 : RUN cd /home     && find / -name "wget*" -print     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Using cache
 ---> 520be64bb70b
Step 13/15 : ENV CONFIG "BIND=:''localhost''"
 ---> Using cache
 ---> 4e8d26392841
Step 14/15 : ENV RUN ""
 ---> Using cache
 ---> 4b2f6830e2b0
Step 15/15 : ENTRYPOINT /home/j64-805/bin/jconsole -js "config_jhs_ =: 3 : '$CONFIG'" -js "$RUN" -js "load'~addons/ide/jhs/core.ijs'" "init_jhs_''"
 ---> Using cache
 ---> dbe5e6b40745
Successfully built dbe5e6b40745
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build --no-cache=true . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 83.46 kB
Step 1/15 : FROM tatsushid/tinycore:7.2-x86_64
 ---> 1e1259755d99
Step 2/15 : USER tc
 ---> Running in dc06bde0acfa
 ---> 1996440077ef
Removing intermediate container dc06bde0acfa
Step 3/15 : RUN tce-load -wic         squashfs-tools
 ---> Running in 16edf7702316
Downloading: squashfs-tools.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
squashfs-tools.tcz   100% |*******************************|   100k  0:00:00 ETA
squashfs-tools.tcz: OK
Parallel unsquashfs: Using 4 processors
2 inodes (49 blocks) to write

[=================================================================|] 49/49 100%

created 2 files
created 4 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> bad9536c87f6
Removing intermediate container 16edf7702316
Step 4/15 : RUN tce-load -wic         ncurses
 ---> Running in d756ca14e16f
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz          100% |*******************************|   196k  0:00:00 ETA
ncurses.tcz: OK
Parallel unsquashfs: Using 4 processors
39 inodes (135 blocks) to write

[===============================================================|] 135/135 100%

created 25 files
created 12 directories
created 14 symlinks
created 0 devices
created 0 fifos
 ---> 76902960896b
Removing intermediate container d756ca14e16f
Step 5/15 : RUN tce-load -wic         openssl-dev
 ---> Running in 4168fe6eba0e
openssl-dev.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz          100% |*******************************|  2100k  0:00:00 ETA
openssl.tcz: OK
Parallel unsquashfs: Using 4 processors
201 inodes (1169 blocks) to write

[=============================================================|] 1169/1169 100%

created 199 files
created 15 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: openssl-dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl-dev.tcz      100% |*******************************|  2108k  0:00:00 ETA
openssl-dev.tcz: OK
Parallel unsquashfs: Using 4 processors
80 inodes (1629 blocks) to write

[=============================================================|] 1629/1629 100%

created 80 files
created 7 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> 4f3ec41e6eb3
Removing intermediate container 4168fe6eba0e
Step 6/15 : RUN tce-load -wic         ca-certificates
 ---> Running in 209bae372935
Downloading: ca-certificates.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget: server returned error: HTTP/1.1 404 Not Found
md5sum: ca-certificates.tcz.md5.txt: No such file or directory
Error on ca-certificates.tcz
 ---> 06f02f9e5906
Removing intermediate container 209bae372935
Step 7/15 : RUN tce-load -wic         wget
 ---> Running in 3ace4d3a5a60
wget.tcz.dep OK
gnutls.tcz.dep OK
p11-kit.tcz.dep OK
nettle.tcz.dep OK
Downloading: pcre.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz             100% |*******************************|   304k  0:00:00 ETA
pcre.tcz: OK
Parallel unsquashfs: Using 4 processors
17 inodes (205 blocks) to write

[===============================================================|] 205/205 100%

created 7 files
created 5 directories
created 10 symlinks
created 0 devices
created 0 fifos
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz              100% |*******************************|   240k  0:00:00 ETA
gmp.tcz: OK
Parallel unsquashfs: Using 4 processors
6 inodes (108 blocks) to write

[===============================================================|] 108/108 100%

created 2 files
created 4 directories
created 4 symlinks
created 0 devices
created 0 fifos
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz           100% |*******************************|   224k  0:00:00 ETA
nettle.tcz: OK
Parallel unsquashfs: Using 4 processors
10 inodes (12 blocks) to write

[=================================================================|] 12/12 100%

created 6 files
created 5 directories
created 4 symlinks
created 0 devices
created 0 fifos
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz         100% |*******************************| 45056   0:00:00 ETA
libtasn1.tcz: OK
Parallel unsquashfs: Using 4 processors
6 inodes (6 blocks) to write

[===================================================================|] 6/6 100%

created 4 files
created 5 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA
libffi.tcz: OK
Parallel unsquashfs: Using 4 processors
3 inodes (3 blocks) to write

[===================================================================|] 3/3 100%

created 1 files
created 4 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: p11-kit.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz          100% |*******************************|   216k  0:00:00 ETA
p11-kit.tcz: OK
Parallel unsquashfs: Using 4 processors
10 inodes (12 blocks) to write

[=================================================================|] 12/12 100%

created 7 files
created 12 directories
created 3 symlinks
created 0 devices
created 0 fifos
Downloading: gnutls.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz           100% |*******************************|   868k  0:00:00 ETA
gnutls.tcz: OK
Parallel unsquashfs: Using 4 processors
21 inodes (481 blocks) to write

[===============================================================|] 481/481 100%

created 13 files
created 5 directories
created 8 symlinks
created 0 devices
created 0 fifos
Downloading: wget.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz             100% |*******************************|   152k  0:00:00 ETA
wget.tcz: OK
Parallel unsquashfs: Using 4 processors
2 inodes (4 blocks) to write

[===================================================================|] 4/4 100%

created 2 files
created 5 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> 62470b108d08
Removing intermediate container 3ace4d3a5a60
Step 8/15 : RUN ls -l /usr/bin/wget     && type wget
 ---> Running in dfb861448d80
lrwxrwxrwx    1 root     root            17 Jul  8  2016 /usr/bin/wget -> ../../bin/busybox
wget is /usr/local/bin/wget
 ---> 2d4f51980874
Removing intermediate container dfb861448d80
Step 9/15 : USER root
 ---> Running in 8e7c793e42f2
 ---> aec6129b39cf
Removing intermediate container 8e7c793e42f2
Step 10/15 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in d9b6d12d2b9b
 ---> e418d2f6b166
Removing intermediate container d9b6d12d2b9b
Step 11/15 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in 70446c8b46d4
--2017-05-25 13:34:42--  http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz
Resolving www.jsoftware.com... 52.23.108.158
Connecting to www.jsoftware.com|52.23.108.158|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1862818 (1.8M) [application/x-gzip]
Saving to: 'j805_linux64.tar.gz'

     0K .......... .......... .......... .......... ..........  2%  447K 4s
    50K .......... .......... .......... .......... ..........  5%  930K 3s
   100K .......... .......... .......... .......... ..........  8% 3.83M 2s
   150K .......... .......... .......... .......... .......... 10% 3.48M 2s
   200K .......... .......... .......... .......... .......... 13% 1015K 2s
   250K .......... .......... .......... .......... .......... 16% 3.72M 1s
   300K .......... .......... .......... .......... .......... 19% 1.49M 1s
   350K .......... .......... .......... .......... .......... 21% 3.51M 1s
   400K .......... .......... .......... .......... .......... 24% 3.30M 1s
   450K .......... .......... .......... .......... .......... 27% 1.75M 1s
   500K .......... .......... .......... .......... .......... 30% 3.33M 1s
   550K .......... .......... .......... .......... .......... 32% 3.64M 1s
   600K .......... .......... .......... .......... .......... 35% 1.74M 1s
   650K .......... .......... .......... .......... .......... 38% 3.47M 1s
   700K .......... .......... .......... .......... .......... 41% 1.77M 1s
   750K .......... .......... .......... .......... .......... 43% 3.53M 1s
   800K .......... .......... .......... .......... .......... 46% 3.90M 1s
   850K .......... .......... .......... .......... .......... 49% 3.41M 0s
   900K .......... .......... .......... .......... .......... 52% 1.92M 0s
   950K .......... .......... .......... .......... .......... 54% 3.51M 0s
  1000K .......... .......... .......... .......... .......... 57% 3.60M 0s
  1050K .......... .......... .......... .......... .......... 60% 1.98M 0s
  1100K .......... .......... .......... .......... .......... 63% 1.72M 0s
  1150K .......... .......... .......... .......... .......... 65% 3.56M 0s
  1200K .......... .......... .......... .......... .......... 68% 3.60M 0s
  1250K .......... .......... .......... .......... .......... 71% 2.08M 0s
  1300K .......... .......... .......... .......... .......... 74% 3.63M 0s
  1350K .......... .......... .......... .......... .......... 76% 3.40M 0s
  1400K .......... .......... .......... .......... .......... 79% 1.88M 0s
  1450K .......... .......... .......... .......... .......... 82% 3.52M 0s
  1500K .......... .......... .......... .......... .......... 85% 3.61M 0s
  1550K .......... .......... .......... .......... .......... 87% 3.44M 0s
  1600K .......... .......... .......... .......... .......... 90% 2.62M 0s
  1650K .......... .......... .......... .......... .......... 93% 3.15M 0s
  1700K .......... .......... .......... .......... .......... 96% 2.83M 0s
  1750K .......... .......... .......... .......... .......... 98% 2.25M 0s
  1800K .......... .........                                  100% 3.49M=0.8s

2017-05-25 13:34:43 (2.18 MB/s) - 'j805_linux64.tar.gz' saved [1862818/1862818]

 ---> 7cb872c14411
Removing intermediate container 70446c8b46d4
Step 12/15 : RUN cd /home     && find / -name "wget*" -print     && cd j64-805     && mkdir temp     && chown 1000:1000 temp     && cd temp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 3b722f671776
/usr/bin/wget
/usr/local/bin/wget
/usr/local/tce.installed/wget
/usr/local/etc/wgetrc
/tmp/tce/optional/wget.tcz.dep
/tmp/tce/optional/wget.tcz.md5.txt
/tmp/tce/optional/wget.tcz
--2017-05-25 13:34:45--  https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
Resolving raw.githubusercontent.com... 151.101.56.133
Connecting to raw.githubusercontent.com|151.101.56.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 232 [text/plain]
Saving to: 'main.ijs'

     0K                                                       100% 1.46M=0s

2017-05-25 13:34:45 (1.46 MB/s) - 'main.ijs' saved [232/232]

 ---> 466dba03b41d
Removing intermediate container 3b722f671776
Step 13/15 : ENV CONFIG "BIND=:''localhost''"
 ---> Running in f2d49f2c5baa
 ---> f21e98d20317
Removing intermediate container f2d49f2c5baa
Step 14/15 : ENV RUN ""
 ---> Running in 439e086f2f22
 ---> e1c20d2f0b52
Removing intermediate container 439e086f2f22
Step 15/15 : ENTRYPOINT /home/j64-805/bin/jconsole -js "config_jhs_ =: 3 : '$CONFIG'" -js "$RUN" -js "load'~addons/ide/jhs/core.ijs'" "init_jhs_''"
 ---> Running in dbcc95422033
 ---> 956483369251
Removing intermediate container dbcc95422033
Successfully built 956483369251
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '/home/j64-805/temp/main.ijs'" jhswhisk:latest
not found: /home/j64-805/addons/convert/json/json.ijs

J HTTP Server - init OK

Requires HTML 5 browser with javascript.

On many systems localhost is the same as 127.0.0.1. 

Ctrl+c here signals an interrupt to J.

A : separates ip address from port.

Access from another machine:
   http://SERVER_IP_ADDRESS:65001/jijx

Start a web browser on this machine and enter URL:
   http://127.0.0.1:65001/jijx

Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker build --no-cache=true . -t jhswhisk -f Dockerfile
Sending build context to Docker daemon 82.94 kB
Step 1/12 : FROM tatsushid/tinycore:7.2-x86_64
 ---> 1e1259755d99
Step 2/12 : USER tc
 ---> Running in 1117d8abbdc4
 ---> 4891b9afb64e
Removing intermediate container 1117d8abbdc4
Step 3/12 : RUN tce-load -wic         ncurses
 ---> Running in 39b01228d789
Downloading: ncurses.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
ncurses.tcz          100% |*******************************|   196k  0:00:00 ETA
ncurses.tcz: OK
Parallel unsquashfs: Using 4 processors
39 inodes (135 blocks) to write

[===============================================================|] 135/135 100%

created 25 files
created 12 directories
created 14 symlinks
created 0 devices
created 0 fifos
 ---> 7575a622fdb3
Removing intermediate container 39b01228d789
Step 4/12 : RUN tce-load -wic         openssl-dev
 ---> Running in 1fd4c5296a3a
openssl-dev.tcz.dep OK
Downloading: openssl.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl.tcz          100% |*******************************|  2100k  0:00:00 ETA
openssl.tcz: OK
Parallel unsquashfs: Using 4 processors
201 inodes (1169 blocks) to write

[=============================================================|] 1169/1169 100%

created 199 files
created 15 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: openssl-dev.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
openssl-dev.tcz      100% |*******************************|  2108k  0:00:00 ETA
openssl-dev.tcz: OK
Parallel unsquashfs: Using 4 processors
80 inodes (1629 blocks) to write

[=============================================================|] 1629/1629 100%

created 80 files
created 7 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> 0b2287517c0f
Removing intermediate container 1fd4c5296a3a
Step 5/12 : RUN tce-load -wic         wget
 ---> Running in 888db4ad8d2f
wget.tcz.dep OK
gnutls.tcz.dep OK
p11-kit.tcz.dep OK
nettle.tcz.dep OK
Downloading: pcre.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
pcre.tcz             100% |*******************************|   304k  0:00:00 ETA
pcre.tcz: OK
Parallel unsquashfs: Using 4 processors
17 inodes (205 blocks) to write

[===============================================================|] 205/205 100%

created 7 files
created 5 directories
created 10 symlinks
created 0 devices
created 0 fifos
Downloading: gmp.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gmp.tcz              100% |*******************************|   240k  0:00:00 ETA
gmp.tcz: OK
Parallel unsquashfs: Using 4 processors
6 inodes (108 blocks) to write

[===============================================================|] 108/108 100%

created 2 files
created 4 directories
created 4 symlinks
created 0 devices
created 0 fifos
Downloading: nettle.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
nettle.tcz           100% |*******************************|   224k  0:00:00 ETA
nettle.tcz: OK
Parallel unsquashfs: Using 4 processors
10 inodes (12 blocks) to write

[=================================================================|] 12/12 100%

created 6 files
created 5 directories
created 4 symlinks
created 0 devices
created 0 fifos
Downloading: libtasn1.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libtasn1.tcz         100% |*******************************| 45056   0:00:00 ETA
libtasn1.tcz: OK
Parallel unsquashfs: Using 4 processors
6 inodes (6 blocks) to write

[===================================================================|] 6/6 100%

created 4 files
created 5 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: libffi.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
libffi.tcz           100% |*******************************| 16384   0:00:00 ETA
libffi.tcz: OK
Parallel unsquashfs: Using 4 processors
3 inodes (3 blocks) to write

[===================================================================|] 3/3 100%

created 1 files
created 4 directories
created 2 symlinks
created 0 devices
created 0 fifos
Downloading: p11-kit.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
p11-kit.tcz          100% |*******************************|   216k  0:00:00 ETA
p11-kit.tcz: OK
Parallel unsquashfs: Using 4 processors
10 inodes (12 blocks) to write

[=================================================================|] 12/12 100%

created 7 files
created 12 directories
created 3 symlinks
created 0 devices
created 0 fifos
Downloading: gnutls.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
gnutls.tcz           100% |*******************************|   868k  0:00:00 ETA
gnutls.tcz: OK
Parallel unsquashfs: Using 4 processors
21 inodes (481 blocks) to write

[===============================================================|] 481/481 100%

created 13 files
created 5 directories
created 8 symlinks
created 0 devices
created 0 fifos
Downloading: wget.tcz
Connecting to repo.tinycorelinux.net (89.22.99.37:80)
wget.tcz             100% |*******************************|   152k  0:00:00 ETA
wget.tcz: OK
Parallel unsquashfs: Using 4 processors
2 inodes (4 blocks) to write

[===================================================================|] 4/4 100%

created 2 files
created 5 directories
created 0 symlinks
created 0 devices
created 0 fifos
 ---> 845de8deaedf
Removing intermediate container 888db4ad8d2f
Step 6/12 : USER root
 ---> Running in 535e2b98be1c
 ---> 3fa7a33f9c80
Removing intermediate container 535e2b98be1c
Step 7/12 : RUN mkdir /lib64     && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2     && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5
 ---> Running in 497e68b2b64c
 ---> 664ce96be3b6
Removing intermediate container 497e68b2b64c
Step 8/12 : RUN cd /home     && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz     && tar -xf j805_linux64.tar.gz     && rm -rf j805_linux64.tar.gz
 ---> Running in de91a2ef02cc
--2017-05-25 21:16:26--  http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz
Resolving www.jsoftware.com... 52.23.108.158
Connecting to www.jsoftware.com|52.23.108.158|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1862818 (1.8M) [application/x-gzip]
Saving to: 'j805_linux64.tar.gz'

     0K .......... .......... .......... .......... ..........  2%  451K 4s
    50K .......... .......... .......... .......... ..........  5%  930K 3s
   100K .......... .......... .......... .......... ..........  8% 2.13M 2s
   150K .......... .......... .......... .......... .......... 10% 3.77M 2s
   200K .......... .......... .......... .......... .......... 13% 1.75M 1s
   250K .......... .......... .......... .......... .......... 16% 2.29M 1s
   300K .......... .......... .......... .......... .......... 19% 1.84M 1s
   350K .......... .......... .......... .......... .......... 21% 3.44M 1s
   400K .......... .......... .......... .......... .......... 24% 3.76M 1s
   450K .......... .......... .......... .......... .......... 27% 3.77M 1s
   500K .......... .......... .......... .......... .......... 30% 3.24M 1s
   550K .......... .......... .......... .......... .......... 32% 3.10M 1s
   600K .......... .......... .......... .......... .......... 35% 3.12M 1s
   650K .......... .......... .......... .......... .......... 38% 2.73M 1s
   700K .......... .......... .......... .......... .......... 41%  535K 1s
   750K .......... .......... .......... .......... .......... 43% 5.45M 1s
   800K .......... .......... .......... .......... .......... 46%  541K 1s
   850K .......... .......... .......... .......... .......... 49% 7.50M 1s
   900K .......... .......... .......... .......... .......... 52% 25.5M 1s
   950K .......... .......... .......... .......... .......... 54% 32.2M 0s
  1000K .......... .......... .......... .......... .......... 57% 49.8M 0s
  1050K .......... .......... .......... .......... .......... 60% 68.1M 0s
  1100K .......... .......... .......... .......... .......... 63% 78.3M 0s
  1150K .......... .......... .......... .......... .......... 65% 8.03M 0s
  1200K .......... .......... .......... .......... .......... 68% 44.2M 0s
  1250K .......... .......... .......... .......... .......... 71% 1.15M 0s
  1300K .......... .......... .......... .......... .......... 74% 3.51M 0s
  1350K .......... .......... .......... .......... .......... 76% 1.09M 0s
  1400K .......... .......... .......... .......... .......... 79% 4.04M 0s
  1450K .......... .......... .......... .......... .......... 82% 3.34M 0s
  1500K .......... .......... .......... .......... .......... 85% 1.27M 0s
  1550K .......... .......... .......... .......... .......... 87% 3.62M 0s
  1600K .......... .......... .......... .......... .......... 90% 3.47M 0s
  1650K .......... .......... .......... .......... .......... 93% 3.88M 0s
  1700K .......... .......... .......... .......... .......... 96% 2.12M 0s
  1750K .......... .......... .......... .......... .......... 98% 3.14M 0s
  1800K .......... .........                                  100% 5.24M=0.8s

2017-05-25 21:16:27 (2.11 MB/s) - 'j805_linux64.tar.gz' saved [1862818/1862818]

 ---> 33139517ffed
Removing intermediate container de91a2ef02cc
Step 9/12 : RUN cd /tmp     && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
 ---> Running in 9dcd870aa65a
--2017-05-25 21:16:29--  https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs
Resolving raw.githubusercontent.com... 151.101.56.133
Connecting to raw.githubusercontent.com|151.101.56.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 386 [text/plain]
Saving to: 'main.ijs'

     0K                                                       100% 5.04M=0s

2017-05-25 21:16:30 (5.04 MB/s) - 'main.ijs' saved [386/386]

 ---> 3ef9b192af1f
Removing intermediate container 9dcd870aa65a
Step 10/12 : ENV CONFIG "BIND=:''localhost''"
 ---> Running in f7585404f1bb
 ---> 6dc6965ca45c
Removing intermediate container f7585404f1bb
Step 11/12 : ENV RUN ""
 ---> Running in 7a815393cd4c
 ---> 991c2cf3ae59
Removing intermediate container 7a815393cd4c
Step 12/12 : ENTRYPOINT /home/j64-805/bin/jconsole -js "config_jhs_ =: 3 : '$CONFIG'" -js "$RUN" -js "load'~addons/ide/jhs/core.ijs'" "init_jhs_''"
 ---> Running in 127f4ded8742
 ---> d17ec8cddc37
Removing intermediate container 127f4ded8742
Successfully built d17ec8cddc37
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '/tmp/main.ijs'" jhswhisk:latest
not found: /home/j64-805/addons/convert/json/json.ijs

J HTTP Server - init OK

Requires HTML 5 browser with javascript.

On many systems localhost is the same as 127.0.0.1. 

Ctrl+c here signals an interrupt to J.

A : separates ip address from port.

Access from another machine:
   http://SERVER_IP_ADDRESS:65001/jijx

Start a web browser on this machine and enter URL:
   http://127.0.0.1:65001/jijx

^[[A^[[A^[[A^[[A^[[B^[[BThomass-MacBook-Pro:tinyc
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ 
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ ls
Dockerfile	Makefile	README.md	main.ijs
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile
Thomass-MacBook-Pro:tinycore-jhs-whisk tmcguire$ vi Dockerfile

FROM tatsushid/tinycore:7.2-x86_64
#FROM tatsushid/tinycore:latest

# Instructions are run with 'tc' user
USER tc

RUN tce-load -wic \
        ncurses

RUN tce-load -wic \
        openssl-dev

# tiny core uses wget which is part of busybox.
# busybox wget does not have support for openssl therefore
# it can't be used for obtaining a single file from a github repo
# which requires https for the transfer.
# By tce-loading wget this functionality will be built into the
# image.
RUN tce-load -wic \
        wget

# Instructions after here are run with 'root' user
USER root

RUN mkdir /lib64 \
    && ln -s /lib/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2 \
    && ln -s /usr/local/lib/libncurses.so.5 /lib/libtinfo.so.5

RUN cd /home \
    && wget http://www.jsoftware.com/download/j805/install/j805_linux64.tar.gz \
    && tar -xf j805_linux64.tar.gz \
    && rm -rf j805_linux64.tar.gz

# the temp directory for j64-805 under tiny core ends up being /tmp so this is where
# the wget of the main application should take place.
RUN cd /tmp \
    && wget https://raw.githubusercontent.com/tmcguirefl/tinycore-jhs-whisk/master/main.ijs

ENV CONFIG="BIND=:''localhost''"
ENV RUN=""

# example command line for joebo/docker-tinycor-jhs
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''joe'' [ PASS=:''test''" tinycore-jhs:latest
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''joe'' [ PASS=:''test'' [ OKURL=:''jdemo1''" -e RUN="load '~addons/ide/jhs/demo/jdemo1.ijs'" tinycore-jhs:latest

# example command line for tinycore-jhs-whisk implementation with a main.ijs pulled from GitHub
# docker run -p 65001:65001 -e CONFIG="BIND=:''any'' [ USER=:''whisk'' [ PASS=:''whiskadmin'' [ OKURL=:''main''" -e RUN="load '~temp/main.ijs'" tinycore-jhs:latest
ENTRYPOINT /home/j64-805/bin/jconsole -js "config_jhs_ =: 3 : '$CONFIG'" -js "$RUN" -js "load'~addons/ide/jhs/core.ijs'" "init_jhs_''"
