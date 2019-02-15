-- Create table
--DROP TABLE LNK.LNK_EVENTS;
create table LNK.LNK_EVENTS
(                 
  EVENTS_key  NUMBER,
  sys_code     VARCHAR2(2 CHAR),
  LEASING_SUBJECT_NUM_1 VARCHAR2(100 CHAR),
  CRM_CONTRACT_ID_CD_1  VARCHAR2(72),
  DATE_1 DATE 
)
tablespace LNK_DATA
  pctfree 1
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
--ALTER TABLE LNK.LNK_SCHEDULE_IFRS ADD DATE_1 DATE;
grant all on LNK.LNK_EVENTS to stg_xml_crm;
