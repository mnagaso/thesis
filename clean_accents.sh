#!/bin/bash

#
#  remove accented letters and non-ASCII characters from a file by converting them to ASCII equivalents
#
#  Authors : David Luet, Princeton University, USA and Dimitri Komatitsch, CNRS, France, January 2015
#

# this preserves file permissions of executable files
# the second "cp" is there just to be safe: if "iconv" is not installed on a system, then the last "cp", if executed, will copy the file identical to itself
###########
###########
###########
########### VERY IMPORTANT: do not include couverture.tex nor Abstract_in_French.tex Chapter5_Conclusions_in_French.tex in the list of files below, otherwise all French accents will be removed
###########
###########
###########
for f in Abstract_in_English.tex  Chapter1_Introduction.tex  Chapter3.tex Chapter5_Conclusions_in_English.tex licence.tex Chapter2.tex Chapter4.tex PhD_thesis_Masaru_Nagaso_2018.tex Acknowledgements.tex
do
            cp -p $f _____temp08_____
            cp -p $f _____temp09_____
            iconv -f utf-8 -t ASCII//TRANSLIT _____temp08_____ -o _____temp09_____
            cp _____temp09_____ $f
            rm -f _____temp08_____ _____temp09_____
            echo File $f "has been stripped of accented letters and non-ASCII characters"
done


#
#  remove accented letters and non-ASCII characters from a file by converting them to ASCII equivalents
#
#  Authors : David Luet, Princeton University, USA and Dimitri Komatitsch, CNRS, France, January 2015
#

# this preserves file permissions of executable files
# the second "cp" is there just to be safe: if "iconv" is not installed on a system, then the last "cp", if executed, will copy the file identical to itself
            cp -p Bibliography.bib _____temp08_____
            cp -p Bibliography.bib _____temp09_____
            iconv -f utf-8 -t ASCII//TRANSLIT _____temp08_____ -o _____temp09_____
            cp _____temp09_____ Bibliography.bib

            rm -f _____temp08_____ _____temp09_____

echo File Bibliography.bib "has been stripped of accented letters and non-ASCII characters"

