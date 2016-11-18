#!/bin/bash
############################
# Set up initial heirarchy #
############################
cd
mkdir -vp edir1/edir11/edir111
mkdir -vp edir1/edir12/edir121
mkdir -v edir1/edir13
touch  edir1/file1; echo "touched  edir1/file1"
touch edir1/edir13/file131; echo "touched edir1/edir13/file131"
touch edir1/edir11/edir111/file1112; echo "touched edir1/edir11/edir111/file1112" 
touch edir1/edir11/edir111/file1113; echo "touched edir1/edir11/edir111/file1113"
# Move file1113 under directory edir121
mv -v edir1/edir11/edir111/file1113 edir1/edir12/edir121
# Create a soft link of the directory edir111 under the directory edir13, name the soft link edir111-sl
cp -v edir1/file1 edir1/edir11/edir111/file1-copy
# Change permission for the directory edir13 to 700
chmod -v 700 edir1/edir13
# Change permission for the directory edir11 and all subdirectory and files to 770
chmod -vR 770 edir1/edir11
# Rename edir13 to edir13-renamed
mv -v edir1/edir13 edir1/edir13-renamed
# Create a soft link of the directory edir111 under the directory edir13, name the soft link edir111-sl
ln -vs edir1/edir11/edir111 edir1/edir13-renamed/edir111-sl 
#####################################
# Show current state of file system #
#####################################
echo
echo "Current filesystem state:"
tree -pugC
