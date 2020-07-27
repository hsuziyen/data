# -*- coding: utf-8 -*-
"""
Created on Tue Apr  7 09:38:34 2020

@author: User
新北
"""
import requests
import json
url='http://data.ntpc.gov.tw/api/v1/rest/datastore/382000000A-000352-001'
response=requests.get(url)
#data=json.loads(response.text)
data=respinse.json()
#obj=data['retval']
#area=input('請輸入地區:')
    #for key in obj.keys():
        #item=obj[key]
        #if area in item['sarea']
        #print(item['sno']+''+item['sna']+''+item['sarea']+''+item['mday'])
'
response=requests.get(url)
#data=json.loads(response.text)
data=respinse.json()
#obj=data['retval']
#area=input('請輸入地區:')
    #for key in obj.keys():
        #item=obj[key]
        #if area in item['sarea']
        #print(item['sno']+''+item['sna']+''+item['sarea']+''+item['mday'])

