NB. init.ijs - This is the init operation expected to be implemented
NB.      by an HTTP server. In JHS OKURL needs to be set to '/init'
load '~addons/convert/json/json.ijs'
load '~addons/convert/misc/base64.ijs' NB. this contains base64 translation
NB.require 'data/jfiles'
coclass 'init'
coinsert 'jhs'

jev_post_raw =: 3 : 0
NB. Check if init has already been run
NB. I use a try catch block as a trick to create a singleton
NB. variable that is visible in the Server namespace. 
NB. TODO: actually enforce this right now I just replace the file 
NB.       and ignore that it has been run again
try.
  if. initrun_jhs_ = 1 do.
    NB. write HTTP error that init already run
  end.
catch.
  intirun_jhs_ =: 1
end.


NB. if this were form data you would need to parse it:
NB. NV_jhs_=:parse_jhs_ NV_jhs_
NB. then manually get the data using getv

NB. Get the input data to this webapp
JSONinp =. NV_jhs_

JSONinit =. dec_json JSONinp

NB. extract code from base64
try.
  payload =. 'value' gethash_json JSONinit

  b64filedat =. ; 'B64' gethash_json > payload
catch.
  z =. '{ "result" : { "error" : "problem in parsing JSON"}'
  htmlresponse z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
  return.
end.

NB. decode But 64 into text
if. 2 < # b64filedat do.
  filetxt =. frombase64 b64filedat
  'base64 data decoded' fappends '~temp/log.txt'
else.
  NB. data too small send error
  z =. '{ "result" : { "error" : "No B64 data", "B64":"',(": $b64filedat},'"}'
  htmlrespose z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
  return.
end.

NB. save code to file
filetxt fwrites '~temp/main.ijs'

NB. Load file into jhs namespace
curspace =. 18!:5''
18!:4 <'jhs'
0!:0 <jpath '~temp/main.ijs'
18!:4 curspace


NB. return 200 OK response
z =. '{ "result" : { "value" : "success" }}'
htmlresponse z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
)
