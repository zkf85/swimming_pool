#!/bin/sh

# aim to remove all extension of files in the folder, such as ".exe"

find -type f -name '*.exe' | while read f
do 
	mv "$f" "${f%.exe}"
done
