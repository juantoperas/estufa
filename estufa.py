from bottle import route,run,template
import json

@route('/hello/')
def index():

js={
  "nombre":"Pellet Stove",
"release":2.0,
"estado":{
    "temp":27
}
}
return json(js)

run(host='0.0.0.0',port=8008)