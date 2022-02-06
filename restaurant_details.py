
# A very simple Flask Hello World app for you to get started with...
import json
from flask import Flask
from flask import request, jsonify
from flask_restful import Resource, Api, reqparse

import requests, json
from flask import request

def search(type, price, radius, food):
    url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=43.649711271403%2C-79.4317178930426&radius={}&type={}&minprice={}&maxprice={}&keyword={}&key=AIzaSyA5qviA5qfPNzNnWMCyFXDtCXd74Yf62fA".format(radius, type, price, price, food)
    a = requests.get(url)
    c = a.json()
    for i, d in enumerate(c['results']):
        code = d['photos'][0]['photo_reference']
        d['img_link'] = "https://maps.googleapis.com/maps/api/place/photo?maxwidth=4000&photo_reference={}&key=AIzaSyA5qviA5qfPNzNnWMCyFXDtCXd74Yf62fA".format(code)
        print(d['name'])

    output = c['results']
    print(output[0].keys())
    return output


app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
    output = search("cafe", 2, 1000, "coffee")
    return jsonify(output);

