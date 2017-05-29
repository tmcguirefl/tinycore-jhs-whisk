NB. init.ijs - This is the init operation expected to be implemented
NB.      by an HTTP server. In JHS OKURL needs to be set to '/init'
require 'convert/json'
require 'convert/misc' NB. this contains base64 translation

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

NB. extract code from base64
NB. in java this was streamed data I wonder what the representation in JHS is
b64filedat =. 'b64' gethash_json JSONinit
filetxt =. frombase64 b64filedat

NB. save code to file
filetxt fwrites jpath '~/temp/main.ijs'

NB. load code into JHS
load jpath '~/temp/main.ijs'

NB. return 200 OK response

)
