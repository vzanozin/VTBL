---------------------------------------------------------
-- Entry Poin file for install ON DB                   --
-- Created by Anatoli.Levikov on 09.08.2017, 16:01:35 --
---------------------------------------------------------
col spoolname new_value spoolname  
select 'insatlldb_'||to_char(sysdate, 'yymmdd')||'.log' spoolname from dual; 
spool '&spoolname'
set define off


prompt
--prompt DWH -> DWH_DEFAULT_BASE_TABLE.sql
prompt ================================================
prompt
--@@scripts\DWH_DEFAULT_BASE_TABLE.sql


prompt
--prompt DWH -> DWH_V_FT_DEFAULT_EVENTS_REGISTRY.sql
prompt ================================================
prompt
--@@scripts\DWH_V_FT_DEFAULT_EVENTS_REGISTRY.sql

prompt
--prompt DWH -> DWH_V_EVENTS.sql
prompt ================================================
prompt
--@@scripts\DWH_V_EVENTS.sql


prompt
--prompt DM -> DM_V_EVENTS.sql
prompt ================================================
prompt
@@scripts\DM_V_EVENTS.sql


prompt
--prompt DWH -> SYNONYM_DWHVEVENTS_DWHRO.sql
prompt ================================================
prompt
@@scripts\SYNONYM_DWHVEVENTS_DWHRO.sql


prompt
--prompt DWH -> GRANT_DM.sql
prompt ================================================
prompt
@@scripts\GRANT_DM.sql




prompt
--prompt DWH -> V_FT_DEFAULT_EVENTS_REGISTRY_SYNONYM.sql
prompt ================================================
--@@scripts\V_FT_DEFAULT_EVENTS_REGISTRY_SYNONYM.sql

--prompt DWH -> V_FT_DEFAULT_REGISTRY_SYNONYM.sql
prompt ================================================
--@@scripts\V_FT_DEFAULT_REGISTRY_SYNONYM.sql



@@compiller.sql
spool off
quit

