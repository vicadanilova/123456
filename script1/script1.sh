#!/bin/bash
rm errors.log   
    grep -rs 'ACPI' /var/log/ >> errors.log
    sed 's/*//g' errors.log | grep -o '[^/]*$'
    open errors.log
exit 0
#rm-remove
#grep-cauta in directoriu var/log toate fileurile care contin ACPI si ceeaza
# un #fisier errors.log si inscrie toate filerile in acest fisier
#sed-editeaza textul din erors.log si  si cu grep-o sctructureaza doar
 #directoriile

