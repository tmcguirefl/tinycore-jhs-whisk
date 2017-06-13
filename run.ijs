NB. run.ijs - run application 
load '~addons/convert/json/json.ijs'


NB. the coclass is run, I believe this sets up a namespace for jev_post_raw so 
NB. it is not confused with other http paths like the one for /init which uses
NB. the same name for POST handling (i.e. jev_post_raw)
coclass 'run'
coinsert 'jhs'
NB. the load of the main.ijs script needs to go here. Otherwise it is not
NB. scoped properly it seems. It also would seem to indicate that you need
NB. to have a skeleton main.ijs available so things will load properly at 
NB. start up


jev_post_raw=: 3 : 0

decy =. dec_json NV_jhs_

NB. obtain metadata and create an env variable
env =. 2 1$'';''
for_i. 'api_key';'namespace';'action_name';'activation_id';'deadline' do.
 try.
    val =. (;i) gethash_json decy
    env =. env,. ('__OW_',toupper (;i));(;val)
  catch.
    NB. ignore error as data may be incompletely specified.
  end.
end.
env=. }."1 env

NB. load main.ijs
NB. this is proof of concept and technically may be slow since I am
NB. trying to reload the file on every run. It may be better to load
NB. it into the jhs space when init runs so it is already available
NB. 0!:0 <jpath '~temp/main.ijs'

jsoninp =: > 'value' gethash_json decy

try.
  z =. main_jhs_ jsoninp;<env
catch.
  z =. '{"response":{"error":"script not found or error with script"}}'
end.
htmlresponse z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
)


