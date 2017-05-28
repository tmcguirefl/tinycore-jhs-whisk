NB. run.ijs - run application 
require 'convert/json'

NB. the coclass is run, I believe this sets up a namespace for jev_post_raw so 
NB. it is not confused with other http paths like the one for /init which uses
NB. the same name for POST handling (i.e. jev_post_raw)
coclass 'run'
coinsert 'jhs'

jev_post_raw=: 3 : 0
NV_jhs_=:parse_jhs_ NV_jhs_
decy =. decode_json y

NB. obtain metadata and place in ENV 
for_i. 'api_key';'namespace';'action_name';'activation_id';'deadline' do.
  try.
    val =. i gethash_json decy
    NB. put_env '__OW_',toupper i;val
  catch.
    NB. ignore
  end.
end.

z =. main ''     NB. decode
htmlresponse z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
)
