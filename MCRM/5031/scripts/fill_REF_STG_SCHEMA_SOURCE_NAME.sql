merge into etl.REF_STG_SCHEMA_SOURCE_NAME d
using (select 'MCRM' SOURCE_NAME, 'STG_XML_CRM' SCHEMA_NAME from dual) s
on (s.source_name = d.source_name)
when not matched then
  insert
    (d.SOURCE_NAME, d.SCHEMA_NAME)
  values
    (s.SOURCE_NAME, s.SCHEMA_NAME);
