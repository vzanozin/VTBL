prompt Importing table REF_STG_SCHEMA_SOURCE_NAME...
set feedback off
set define off
insert into REF_STG_SCHEMA_SOURCE_NAME (SOURCE_NAME, SCHEMA_NAME)
values ('KONS_BI', 'STG_XML');

insert into REF_STG_SCHEMA_SOURCE_NAME (SOURCE_NAME, SCHEMA_NAME)
values ('XL_BI', 'STG_XML');

insert into REF_STG_SCHEMA_SOURCE_NAME (SOURCE_NAME, SCHEMA_NAME)
values ('CRM', 'STG_XML_CRM');

insert into REF_STG_SCHEMA_SOURCE_NAME (SOURCE_NAME, SCHEMA_NAME)
values ('CC', 'STG_XML_CC');

insert into REF_STG_SCHEMA_SOURCE_NAME (SOURCE_NAME, SCHEMA_NAME)
values ('XLS', 'STG_XLS');

prompt Done.
