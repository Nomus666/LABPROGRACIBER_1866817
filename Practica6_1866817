#!/usr/bin/env python

from bs4 import BeautifulSoup

import requests

url = "www.youtube.com"

r  = requests.get("http://" +url)

data = r.text

soup = BeautifulSoup(data,'html.parser')
#print (soup.find_all('img'))

for link in soup.find_all('img'):
    if link is not None:
        print(link.get('src'))
