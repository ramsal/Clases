#!/bin/bash

# script para respaldos rsync con variables
 
SOURCEDIR=/home/user/Documents/
DESTDIR=/media/diskid/user_backup/Documents/
 
rsync -avz --exclude="*.bak" $SOURCEDIR $DESTDIR
