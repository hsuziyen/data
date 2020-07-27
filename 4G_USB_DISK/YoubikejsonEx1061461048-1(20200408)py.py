# -*- coding: utf-8 -*-
"""
Created on Tue Apr  7 09:09:20 2020

@author: User
"""
import requests
import json
url=	'https://tcgbusfs.blob.core.windows.net/blobyoubike/YouBikeTP.json'
response=requests.get(url)
#data=json.loads(response.text)
data=respinse.json()
#obj=data['retval']
#area=input('請輸入地區:')
    #for key in obj.keys():
        #item=obj[key]
        #if area in item['sarea']
        #print(item['sno']+''+item['sna']+''+item['sarea']+''+item['mday'])
