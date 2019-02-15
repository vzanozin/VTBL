prompt Importing table etl.ctl_actual_file_types...
--set feedback off
--set define off
delete from etl.ctl_actual_file_types where FILE_TYPE_CD='CRMData' and SOURCE_NAME='MCRM';
--select count(1) from into etl.ctl_actual_file_types where  FILE_TYPE_CD='FundingScheduleIFRS';
insert into etl.ctl_actual_file_types (FILE_TYPE_CD, SOURCE_NAME, STG_TABLE_NAME)
values ('CRMData', 'MCRM', 'CRM_EVENTS');
prompt Done.
