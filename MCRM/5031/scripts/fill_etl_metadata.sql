prompt Importing table etl.t_table...
--set feedback off
--set define off

alter table ETL.T_TABLE
  add constraint PK#T_TABLE primary key (TABLE_ID);

delete from etl.t_table where table_id in (180);
insert into etl.t_table (TABLE_ID, TABLE_NAME, SYS_CODE, ACTUAL_FLAG, OWNER)
values (180, 'V_CRM_EVENTS', '05', 1, 'STG_XML_CRM');


commit;

delete from etl.t_table_rule where rule_id in (393);
insert into etl.t_table_rule (RULE_ID, TABLE_ID, ACTUAL_FLAG, K_TYPE, K_TABLE_NAME, K_PK_FILED, K_RULE_TYPE)
values (393, 180, 1, 'PK', 'LNK_EVENTS', 'EVENTS_KEY', 1);

commit;
delete from etl.ref_rule_field where rule_id in (393);
insert into etl.ref_rule_field (RULE_ID, FIELD_NAME, ACTUAL_FLAG, K_FIELD_NAME)
values (393, 'CRM_CONTRACT_ID_CD,EVENT_DATE,LEASING_SUBJECT_NUM', 1, 'CRM_CONTRACT_ID_CD_1,DATE_1,LEASING_SUBJECT_NUM_1');
/*
declare 
 v_table_name varchar2(100) := 'V_CRM_EVENTS';
 v_LNK_table_name varchar2(100):= 'LNK_AGREEMENT';
 v_key_field varchar2(100) := 'AGREEMENT_KEY';
 v_src_field varchar2(100) := 'AGREEMENT_RESULT';
 v_K_FIELD_NAME varchar2(100) := 'AGREEMENT_CD_1';
 v_stg_owner varchar2(100) := 'STG_XML_CRM'  ;
 v_K_TYPE varchar2(100) := 'FK';
-------------------------------------------------------------------------------------- 
 v_t_id number;
 v_rule_id number;
begin
   select max(TABLE_ID) into v_t_id
   from T_TABLE where TABLE_NAME = v_table_name;
   if v_t_id is null then 
    select max(TABLE_ID) + 1 into v_t_id from T_TABLE;  
    insert into T_TABLE values (v_t_id,v_table_name, '05', 1, v_stg_owner); 
   end if; 
   select max(RULE_ID) + 1 into v_rule_id from T_TABLE_RULE;
   -------------------------------------------------------------------------------------- 
   insert into T_TABLE_RULE values (v_rule_id,v_t_id, '1',v_K_TYPE, v_LNK_table_name, v_key_field,1 );
   insert into REF_RULE_FIELD values (v_rule_id,v_src_field, 1, v_K_FIELD_NAME );
   commit;
end;
*/


prompt Done.

