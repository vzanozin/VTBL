-- Create table
create table DWH.EVENTS
(
  events_key            NUMBER,
  advance_percent       NUMBER(10,2),
  appeal_source         VARCHAR2(400),
  approval_result       VARCHAR2(400),
  approval_route        VARCHAR2(400),
  brend_model_nam       VARCHAR2(400),
  brend_nam             VARCHAR2(200),
  business_unit_nam     VARCHAR2(320),
  car_type_nam          VARCHAR2(4000),
  comission_amt         NUMBER(10,2),
  comission_rate        NUMBER(20,10),
  convert_rate          NUMBER(10,4),
  country_ru_nam        VARCHAR2(116),
  crm_contract_id_cd    VARCHAR2(72),
  crm_subject_cd        VARCHAR2(72),
  currency_leas_subject VARCHAR2(10),
  documentelementfk     NUMBER(10),
  event                 VARCHAR2(200),
  event_num             NUMBER(10),
  finance_amt           NUMBER(10,2),
  fullcost_amt          NUMBER(10,2),
  inn_leaseholder       VARCHAR2(24),
  inn_supplier          NUMBER(10),
  kasko_crm_client_nam  VARCHAR2(400),
  lease_term            NUMBER(10),
  leasing_subject_nam   VARCHAR2(200),
  leasing_subject_num   NUMBER(8),
  liquidity_group       NUMBER,
  manager_nam           VARCHAR2(400),
  model_nam             VARCHAR2(200),
  nam_leaseholder       VARCHAR2(700),
  offer_rate            VARCHAR2(400),
  okved_code            VARCHAR2(200),
  payment_type_nam      VARCHAR2(400),
  plan_amt              NUMBER(10,2),
  prepay_amt            NUMBER(10,2),
  prepay_rate           NUMBER(20,10),
  pre_contract_id_cd    VARCHAR2(600),
  product_nam           VARCHAR2(200),
  redemption_amt        NUMBER(10,2),
  rehiring_flg          VARCHAR2(1),
  stage                 VARCHAR2(200),
  subsidy_flg           VARCHAR2(1),
  supplier_nam          VARCHAR2(700),
  task_begin_dt         DATE,
  task_history          CLOB,
  task_subject          VARCHAR2(700),
  testdrive_flg         VARCHAR2(1),
  used_flg              VARCHAR2(1),
  vehicle_category_nam  VARCHAR2(4000),
  file_id               NUMBER,
  sess_no               NUMBER,
  valid_from_dttm       DATE,
  valid_to_dttm         DATE,
  process_key           NUMBER,
)nologging;
