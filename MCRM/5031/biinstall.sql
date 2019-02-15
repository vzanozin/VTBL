---------------------------------------------------------
-- Entry Poin file for install ON DB                   --
-- Created by Anatoli.Levikov on 09.08.2017, 16:01:35 --
---------------------------------------------------------
col spoolname new_value spoolname  
select 'insatlldbbi_'||to_char(sysdate, 'yymmdd')||'.log' spoolname from dual; 
spool '&spoolname'
set define off

prompt
prompt DWH -> cr_table.sql
prompt ================================================
prompt
@@biscripts\cr_table.sql

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



@@compiller.sql
spool off
quit

