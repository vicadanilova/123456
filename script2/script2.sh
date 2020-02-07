#!/bin/bash
    find /var/log/ -name '*.log' 2>/dev/null | xargs wc -l 2>/dev/null >> list.txt
    tail -n 1 list.txt
rm -f list.txt
exit 0

#find /var/log/ -name '*.log' - cauta toate fileurile in var/log care contin *.log 
#2>/dev/null - inscrie in file fara erori
#|- sau 
#xargs - executa comanda in terminal
wc -l -numara liniile din file
#l 2>/dev/null >> list.txt-  inscrie in file din rind nou in list.txt
#tail-n 1 - afiseaza ultimul element din  list.txt

