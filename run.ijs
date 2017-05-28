NB. run.ijs - run application 
coclass 'main'
coinsert 'jhs'

jev_post_raw=: 3 : 0
NV_jhs_=:parse_jhs_ NV_jhs_
z =. main ''     NB. decode
htmlresponse z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
)
