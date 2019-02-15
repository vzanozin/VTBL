---------------------------------------------------------
-- Entry Poin file for install ON DB                   --
-- Created by Vladimir.Zanozin on 03.08.2017, 16:01:35 --
---------------------------------------------------------
col spoolname new_value spoolname  
select 'insatlldb_'||to_char(sysdate, 'yymmdd')||'.log' spoolname from dual; 
spool '&spoolname'
set define off


prompt
prompt LNK ->lnk.sql 
prompt ==========================
prompt
@@scripts\lnk.sql

prompt
prompt LNK ->fill_lnk.sql 
prompt ==========================
prompt
--@@scripts\fill_lnk.sql

prompt
prompt ETL ->CTL_CHECK_NEW_XML_MCRM_FILES.sql 
prompt ==========================
prompt
@@scripts\CTL_CHECK_NEW_XML_MCRM_FILES.sql


prompt
prompt ETL ->fill_ctl_actual_file_type.sql 
prompt ==========================
prompt
@@scripts\fill_ctl_actual_file_type.sql
prompt
prompt ETL -> fill_REF_STG_SCHEMA_SOURCE_NAME.sql 
prompt ==========================
prompt
@@scripts\fill_REF_STG_SCHEMA_SOURCE_NAME.sql
prompt
prompt STG ->add_modify_obj_stg.sql 
prompt ==========================
prompt
@@scripts\add_modify_obj_stg.sql


prompt
prompt STG ->STG_XML_CRM.V_EVENTS.sql
prompt ==========================
prompt
@@scripts\STG_XML_CRM.V_CRM_EVENTS.sql

prompt
prompt DWH -> add_obj_dwh.sql
prompt ==========================
prompt
@@scripts\add_obj_dwh.sql

prompt
prompt DWH -> fill_etl_metadata.sql
prompt ==========================
prompt
@@scripts\fill_etl_metadata.sql

prompt
prompt DWH -> add_modify_obj.sql
prompt ==========================
prompt
@@scripts\add_modify_obj.sql

--prompt
--prompt DWH -> modify_obj.sql
--prompt ==========================
--prompt
--@@scripts\modify_obj.sql
exit
prompt
prompt DWH -> GRANT_DWH.sql
prompt ================================================
prompt
@@biscripts\GRANT_DWH_OBJ.sql


prompt
prompt DM -> DM_V_EVENTS.sql
prompt ================================================
prompt
@@biscripts\DM_V_EVENTS.sql


prompt
prompt DWHRO -> SYNONYM_DWHVEVENTS_DWHRO.sql
prompt ================================================
prompt
@@biscripts\SYNONYM_DWHVEVENTS_DWHRO.sql


prompt
prompt DM -> GRANT_DM.sql
prompt ================================================
prompt
@@biscripts\GRANT_DM_OBJ.sql



--@@compiller.sql
spool off
quit

