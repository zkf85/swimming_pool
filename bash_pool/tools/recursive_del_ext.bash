#!/bin/sh

# recursively copy files with certain extension in a folder

find . -depth -type f -name '*.exe' | cpio --pass-through \
--preserve-modification-time \
--make-directories --verbose ./new 
