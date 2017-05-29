NB. init.ijs - This is the init operation expected to be implemented
NB.      by an HTTP server. In JHS OKURL needs to be set to '/init'
require 'convert/json'

coclass 'init'
coinsert 'jhs'

jev_post_raw =: 3 : 0
NB. Check if init has already been run
NB. I use a try catch block as a trick to create a singleton
NB. variable that is visible in the Server namespace. I don't
NB. know if it really works or not.
try.
  if. initrun_jhs_ = 1 do.
    NB. write HTTP error that init already run
  end.
catch.
  intirun_jhs_ =: 1
end.

NB. decode JSON input y
JSONinit =. dec_json y

NB. extract code 

NB. save code to file

NB. load code into JHS

NB. return 200 OK response

)
