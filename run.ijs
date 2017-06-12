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
NB. There is also one more problem. run.ijs needs to be reloaded at the JHS
NB. level every time there is a change to the main.ijs script. This seems to 
NB. be the only way main.ijs is picked up with the new code. There doesn't
NB. seem to be any runtime way to load a new package unless init saves it to
NB. _jhs_ name space variable and run performs a 'do' (".) on it.

load '~temp/main.ijs'

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

jsoninp =: > 'value' gethash_json decy

z =. main jsoninp;<env
htmlresponse z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
)
