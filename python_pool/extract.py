#!/usr/bin/python

inFile = open("data.txt")
outFile = open("result.txt", "w")
buffer = []
keepCurrentSet = True

for line in inFile:
	buffer.append(line)
	if line.startswith("----"):
		#---- starts a new data set
		if keepCurrentSet:
			outFile.write("".join(buffer))
		#now reset our state
		keepCurrentSet = False
		buffer = []
	elif line.startswith("extractme"):
		keepCurrentSet = True

inFile.close()
outFile.close()

