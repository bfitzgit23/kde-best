#!/bin/bash
# **************** Change Variables Here ************
startdirectory="/home/ben/kde-best"
searchterm="qt-*-4.8.2020.02.ebuild"
replaceterm="qt-*-4.8.7.ebuild"
# **********************************************************

echo "***************************************************"
echo "* Search and Replace in Files Version 01-Aug-2012 *"
echo "***************************************************"

i=0; 

  for file in $(grep -l -R $searchterm $startdirectory)
    do
      cp $file $file.bak
      sed -e "s/$searchterm/$replaceterm/ig" $file > tempfile.tmp
      mv tempfile.tmp $file

    let i++;

      echo "Modified: " $file
    done

echo " *** All Done! *** Modified files:" $i