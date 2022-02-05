import requests, json

a = requests.get('http://nickwood5.pythonanywhere.com/')
print(a.json())