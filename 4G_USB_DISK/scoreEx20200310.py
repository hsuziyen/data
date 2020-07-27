# -*- coding: utf-8 -*-
"""
Created on Tue Mar 10 09:59:14 2020

@author: 1071461000 李村林
全班成績分析, score.txt
"""
f = open('score.txt','r')
a = f.read()
f.close()
c=[0,0,0,0,0]
s=['>=90','80-89','70-79','60-69','40-59','<=39']
#print(type(a)
L = a.split()
#print(len(L))
#print(L(62))
for i in range(len(L)):
    L[i] = int(L[i])
print(L)
for i in range(len(L)):
    if L(i) >=90:
        c[0] +=1
    elif L(i) >=80:
        c[1] +=1
    elif L(i) >=70:
        c[2] +=1
print('90分以上{}人'.format(c[0]))
print('80~89{}人'.format(c[1]))
print('70~79分{}人'.format(c[2]))
#
with open('score_result.txt','w') as fout:
    for i in range(len(c)):
        fout.write(s[i]+'分'+str(c[i])+'人\n')
#print('平均成績:{:.1f}'.format(sum(L)/len(L)))
#f.close()
