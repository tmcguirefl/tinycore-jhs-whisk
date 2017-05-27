NB. init.ijs - This is the init operation expected to be implemented
NB.      by an HTTP server. In JHS OKURL needs to be set to '/init'
coclass init
coinsert jhs

jev_post_raw =: 3 : 0
NB. Check if init has already been run

NB. decode JSON input y

NB. extract code 

NB. save code to file

NB. load code into JHS

NB. return 200 OK response

)
