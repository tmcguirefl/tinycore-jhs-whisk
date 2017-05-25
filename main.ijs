NB. main.ijs - skeleton for handling OpenWhisk microservice events
NB.    at its basic level a whisk function consumes JSON input and 
NB.    responds with JSON output
main =: 3 : 0
z =. '{ "response": "hello world" }'
smoutput z
)
