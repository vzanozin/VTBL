drop table DWH.EVENTS purge;
-- Create table
create table DWH.EVENTS
(
  events_key            NUMBER,
  agreement_key         NUMBER,
  act_dt                DATE,
  task_begin_dt                DATE,
  task_end_dt                DATE,
  advance_percent       NUMBER(*,2),
  advpayment 		NUMBER,
  agent_fee_amt         NUMBER(*,2),
  agent_fee_rate        NUMBER(*,2),
  agreement_result      NUMBER,
  appeal_source         VARCHAR2(400),
  approval_conditions   CLOB, --VARCHAR2(4000),
  approval_result       VARCHAR2(400),
  approval_route        VARCHAR2(400),
  brend_model_nam       VARCHAR2(400),
  brend_nam             VARCHAR2(200),
  business_unit_nam     VARCHAR2(320),
  car_type_nam          VARCHAR2(500),  --edit
  comission_amt         NUMBER(*,2),
  comission_rate        NUMBER(*,10),
  convert_rate          NUMBER(*,4),
  country_ru_nam        VARCHAR2(116),
  crm_contract_id_cd    VARCHAR2(72),
  crm_subject_cd        VARCHAR2(72),
  currency_leas_subject VARCHAR2(10),
  event                 VARCHAR2(200),
  event_date            DATE,
  event_num             NUMBER,
  finance_amt           NUMBER(*,2),
  fullcost_amt          NUMBER(*,2),
  inn_leaseholder       VARCHAR2(24),
  inn_supplier          VARCHAR2(100), --new  min
  kasko_crm_client_nam  VARCHAR2(400),
  lease_term            NUMBER,
  leasing_subject_nam   VARCHAR2(200),
  leasing_subject_num   NUMBER(8),
  liquidity_group       NUMBER,
  manager_nam           VARCHAR2(400),
  model_nam             VARCHAR2(200),
  nam_leaseholder       VARCHAR2(700),
  offer_rate            NUMBER(*,2),
  okved_code            VARCHAR2(200),
  payment_type_nam      VARCHAR2(400),
  plan_amt              NUMBER(*,2),
  prepay_amt            NUMBER(*,2),
  prepay_rate           NUMBER(*,10),
  pre_contract_id_cd    VARCHAR2(600),
  pre_contract_num      VARCHAR2(400), --new
  product_nam           VARCHAR2(200),
  recommendat_desc      CLOB, --VARCHAR2(4000),
  redemption_amt        NUMBER(*,2),
  reduce_step           NUMBER(*,2),
  rehiring_flg          VARCHAR2(1),
  stage                 VARCHAR2(200),
  subproduct_nam        VARCHAR2(400),  --new
  subsidy_amt           NUMBER(*,2),
  subsidy_flg           VARCHAR2(1),
  subsidy_program       VARCHAR2(800), --new
  subsidy_share         NUMBER(*,2),
  supplier_nam          VARCHAR2(700),
  task_history          CLOB,--VARCHAR2(4000),
  task_subject          VARCHAR2(700),
  testdrive_flg         VARCHAR2(1),
  used_flg              VARCHAR2(1),
  vehicle_category_nam  VARCHAR2(800),  --new
  file_id               NUMBER,
  sess_no               NUMBER,
  valid_from_dttm       DATE,
  valid_to_dttm         DATE,
  process_key           NUMBER,
  w_rate                as (OFFER_RATE*(CONVERT_RATE*FULLCOST_AMT-PREPAY_AMT)),
  w_advance             as (PREPAY_RATE*FULLCOST_AMT*CONVERT_RATE),
  w_agent_fee_amt       as (FULLCOST_AMT*AGENT_FEE_RATE*CONVERT_RATE),
  w_commission_amt      as (COMISSION_RATE *(FINANCE_AMT*CONVERT_RATE - PREPAY_AMT)),	
  w_lease_term          as (LEASE_TERM*(FINANCE_AMT*CONVERT_RATE-PREPAY_AMT)),
  w_reduce_step         as (REDUCE_STEP*(FINANCE_AMT*CONVERT_RATE-PREPAY_AMT))
)
tablespace DWH_DATA
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
nologging;
create unique index DWH.U_EVENTS on DWH.EVENTS (CRM_CONTRACT_ID_CD,EVENT_DATE,LEASING_SUBJECT_NUM,VALID_TO_DTTM);
create unique index DWH.U#EVENTS on DWH.EVENTS (EVENTS_KEY,VALID_TO_DTTM);


