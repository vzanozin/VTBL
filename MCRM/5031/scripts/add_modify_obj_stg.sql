drop table STG_XML_CRM.G$EVENTS purge;
drop table STG_XML_CRM.GS$CRM_EVENTS purge;
drop table STG_XML_CRM.CRM_EVENTS purge;
-- Create table
create table STG_XML_CRM.CRM_EVENTS
(
  act_dt                VARCHAR2(4000),
  advance_percent       NUMBER,
  advpayment 		NUMBER,
  agent_fee_amt         NUMBER,
  agent_fee_rate        NUMBER,
  agreement_result      NUMBER,
  appeal_source         VARCHAR2(4000),
  approval_conditions   CLOB, --VARCHAR2(4000),
  approval_result       VARCHAR2(4000),
  approval_route        VARCHAR2(4000),
  brend_model_nam       VARCHAR2(4000),
  brend_nam             VARCHAR2(4000),
  business_unit_nam     VARCHAR2(4000),
  car_type_nam          VARCHAR2(4000),
  comission_amt         NUMBER,
  comission_rate        NUMBER,
  convert_rate          NUMBER,
  country_ru_nam        VARCHAR2(4000),
  crm_contract_id_cd    VARCHAR2(4000),
  crm_subject_cd        VARCHAR2(4000),
  currency_leas_subject VARCHAR2(4000),
  documentelementfk     NUMBER(10),
  event                 VARCHAR2(4000),
  event_date            VARCHAR2(4000),
  event_num             NUMBER(10),
  finance_amt           NUMBER,
  fullcost_amt          NUMBER,
  inn_leaseholder       VARCHAR2(4000),
  inn_supplier          VARCHAR2(4000),
  kasko_crm_client_nam  VARCHAR2(4000),
  lease_term            NUMBER(10),
  leasing_subject_nam   VARCHAR2(4000),
  leasing_subject_num   VARCHAR2(4000),
  liquidity_group       NUMBER(10),
  manager_nam           VARCHAR2(4000),
  model_nam             VARCHAR2(4000),
  nam_leaseholder       VARCHAR2(4000),
  offer_rate            NUMBER,
  okved_code            VARCHAR2(4000),
  payment_type_nam      VARCHAR2(4000),
  plan_amt              NUMBER,
  prepay_amt            NUMBER,
  prepay_rate           NUMBER,
  pre_contract_id_cd    VARCHAR2(4000),
  pre_contract_num      VARCHAR2(4000),
  product_nam           VARCHAR2(4000),
  recommendat_desc      CLOB, --VARCHAR2(4000),
  redemption_amt        NUMBER,
  reduce_step           NUMBER,
  rehiring_flg          NUMBER,
  stage                 VARCHAR2(4000),
  subproduct_nam        VARCHAR2(4000),
  subsidy_amt           NUMBER,
  subsidy_flg           NUMBER(10),
  subsidy_program       VARCHAR2(4000),
  subsidy_share         NUMBER,
  supplier_nam          VARCHAR2(4000),
  task_begin_dt                VARCHAR2(4000),
  task_end_dt                VARCHAR2(4000),
--  task_begin_dt         DATE,
--  task_end_dt           DATE,
  task_history          CLOB, --VARCHAR2(4000),
  task_subject          VARCHAR2(4000),
  testdrive_flg         NUMBER(10),
  used_flg              NUMBER(10),
  vehicle_category_nam  VARCHAR2(4000),
  file_id               NUMBER,
  sess_no               NUMBER
)
tablespace STG_XML_CRM_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
