#! /bin/bash
rm full.log
    cat /var/log/Xorg.0.log  >> tmp.log
    sed -i 's/] (WW)/] Warning:/g' tmp.log
    sed -i 's/] (II)/] Information:/g' tmp.log
    grep 'Information:' tmp.log >> full.log
    grep 'Warning:' tmp.log >> full.log
rm tmp.log
cat full.log
exit 0

#cat inscrie in temp liniile de cimp din file  Xorg.0.log
#dupa sed - i tot ce este cu WW se transforma in Warning  din temp.log
#la fel cu II
#grep din temp log  inscrie in full.log toate liniile de cinp care contin information si Warning
#si sterge fileul tmp.log

