import requests, json
url = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=43.649711271403%2C-79.4317178930426&radius=1500&type=restaurant&key=AIzaSyA5qviA5qfPNzNnWMCyFXDtCXd74Yf62fA"
a = requests.get(url)
c = a.json()

for d in c['results']:
    if 'price_level' in d.keys():
        pr = d['price_level']
    else:
        pr = "unknown"
    print("{} is located at {}, {}. Rating is {}, price level {}".format(d['name'], d['geometry']['location']['lat'], d['geometry']['location']['lng'], d['rating'], pr))
    #print(d)