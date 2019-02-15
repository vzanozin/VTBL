chcp 1251
rem sqlplus PROD_DBA/adm@VTBL_TEST @APEX\apex_install.sql
mkdir D:\VTBL_DATA\XML\CRM\
mkdir D:\VTBL_DATA\XML\CRM\ARC\
mkdir D:\VTBL_DATA\XML\CRM\OUT\
mkdir D:\VTBL_DATA\XML\MCRM\
mkdir D:\VTBL_DATA\XML\MCRM\ARC\
mkdir D:\VTBL_DATA\XML\MCRM\OUT\
copy VTBL\XML\CRMData_vl216852_16.07.2018.xsd D:\VTBL\XML\CRMData_vl216852_16.07.2018.xsd
rem copy VTBL\scripts\COPY_TABLE_CLPL.vbs D:\VTBL\scripts\COPY_TABLE_CLPL.vbs
sqlplus adm/adm@tsc_dev @install.sql
rem sqlplus adm/adm @VTBL\XML\xl_set.sql
rem sqlplus adm/adm @VTBL\XML\kons_set.sql
