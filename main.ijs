NB. main.ijs - skeleton for handling OpenWhisk microservice events
NB.    at its basic level a whisk function consumes JSON input and 
NB.    responds with JSON output
coclass 'main'
coinsert 'jhs'

jev_post_raw=: 3 : 0
NV_jhs_=:parse_jhs_ NV_jhs_
main ''
)

main =: 3 : 0
z =. '{ "response": "hello world" }'
htmlresponse z,~gsrchead rplc '<TYPE>';'application/json';'<LENGTH>';":#z
)
