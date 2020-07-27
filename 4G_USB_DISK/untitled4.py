# -*- coding: utf-8 -*-
"""
Created on Tue Mar 24 09:56:00 2020

@author: User
http://data.nhi.gov.tw/Datasets/Download.ashx?rid=A21030000I-D50001-001&l=https://data.nhi.gov.tw/resource/mask/maskdata.csv
及時下載網頁上的csv的檔
"""
import requests
import csv
from datatime import datatime

url='http://data.nhi.gov.tw/Datasets/Download.ashx?
'rid=A21030000I-D50001-001&l'
'https://data.nhi.gov.tw/resource/mask/maskdata.csv'
response=requests.get(url)
file_name='maskdata