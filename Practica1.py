import requests
import json

output = []
def call(url):
    r = requests.get(url)
    return (json.loads(r.content))

api = input("Api key de openweathermap\t")
output.append(call(f"https://api.openweathermap.org/data/2.5/weather?q=London&units=metric&appid={api}"))
output.append(call(f"https://api.openweathermap.org/data/2.5/weather?id=2172797&appid={api}"))
output.append(call(f"https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid={api}"))

with open("practica1.txt","w+") as txt:
    for i in output:
        txt.write(str(i)+"\n")
