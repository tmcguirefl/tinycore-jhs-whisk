NB. run.ijs - run application 
require 'convert/json'
coclass 'main'
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
