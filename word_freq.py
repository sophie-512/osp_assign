#!/usr/bin/python3
import sys

file_name=sys.argv
f=open(file_name[1])
lines=f.readlines()

word={}
cnt=0

for line in lines:
	line=line.strip()
	line=line.replace('.','')
	line=line.replace(',','')
	line=line.replace('!','')
	line=line.replace('"','')
	line=line.replace(':','')
	line=line.replace(';','')
	line=line.replace('-','')
	line=line.replace('?','')
	line=line.replace("'s",'')
	for tok in line.split(' '):
		if tok=='':
			continue	
		if tok not in word:
			word[tok]=1
		else:
			word[tok]=word[tok]+1
word=sorted(word.items(),key=lambda item:item[1],reverse=True)

for i in word:
	list(i)
	cnt=cnt+1
	print('{:<15} {:>10}'.format(i[0],i[1]))
	if cnt==int(file_name[2]):
		break
	
