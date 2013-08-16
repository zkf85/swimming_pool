#!/bin/sh

# aim to copy all .exe files in all the sub-folders to a new directory. i.e. ~/bin

ls -d */ > folders

cat folders | while read Rline
do
	cd $Rline
	cp *.exe ../new
	cd ..
done

