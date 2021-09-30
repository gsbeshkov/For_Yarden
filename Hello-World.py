from flask import Flask, request
from flask_restful import Resource, Api
import os
app = Flask(__name__)
api = Api(app)

var = 'CONTAINER_PYTHON_VAR'
value = os.getenv(var)
class Greeting (Resource):
def get(self):
return value
api.add_resource(Greeting, '/') # Route_1

if __name__ == '__main__':
app.run('0.0.0.0','31313')
