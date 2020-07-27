# -*- coding: utf-8 -*-
"""
Created on Tue Mar 31 09:53:41 2020

@author: User
Youbike json data
https://tcgbusfs.blob.core.windows.net/blobyoubike/YouBikeTP.json
"""
import json
with open('YoubikeTP.json',encoding='utf8')as fin:
    data=json.load(fin)
    obj=data['retval']
    for key in obj.keys():
        if i<3:
            item=obj[key]
            print(item['sno']+''item['sna']+''item['sbi']+''item['sarea'])
            i +=1
