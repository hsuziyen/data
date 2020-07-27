# -*- coding: utf-8 -*-
"""
Created on Tue Mar 17 09:34:36 2020

@author: 1061461048 許芷嫣
Youbike 練習 EX1-2-2-1-input.csv
"""
import csv
i=0
with open('Ex1-2-2-1-input.csv','r'encoding='utf-8-sig') as fin:
with open('youbikeMax.csv','w'encoding='utf-8',newfile='') as fout:  
    csvreader=csv.reader(fin,delimiter=',')
    csvwriter=csv.writer(fout,delimiter=',')
    for row in csvreader:
        if (i <=10):
            print(row[0]+''+row[2]+''+row[3])
            csvwriter.writerow(row)
            i +=1
