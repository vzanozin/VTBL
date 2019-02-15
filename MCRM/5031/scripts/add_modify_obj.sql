--drop table dwh.SALES_FUNNEL purge;
--create table dwh.SALES_FUNNEL nologging
--as select a.*,sysdate valid_from_dttm ,sysdate valid_to_dttm
--,0 process_key  from stg_xml_crm.v_crm_events a;

--drop table dwh.EVENTS purge;

--create table DWH.EVENTS nologging
--as select a.*
----, (OFFER_RATE * CONVERT_RATE * FULLCOST_AMT – PREPAY_AMT) W_RATE,0 W_ADVANCE,0 W_AGENT_FEE_AMT,0 W_COMMISSION_AMT,0 W_LEASE_TERM
--, sysdate valid_from_dttm ,sysdate valid_to_dttm
--,0 process_key  from stg_xml_crm.v_crm_events a where 1=2;

-- Add/modify columns 
-- Add/modify columns 
alter table DWH.EVENTS modify agreement_result NUMBER;
alter table DWH.EVENTS modify event_num NUMBER;
alter table DWH.EVENTS modify lease_term NUMBER;
----
alter table DWH.EVENTS modify appeal_source VARCHAR2(400);
alter table DWH.EVENTS modify approval_result VARCHAR2(400);
alter table DWH.EVENTS modify approval_route VARCHAR2(400);
alter table DWH.EVENTS modify brend_model_nam VARCHAR2(400);
alter table DWH.EVENTS modify brend_nam VARCHAR2(200);
alter table DWH.EVENTS modify business_unit_nam VARCHAR2(320);
alter table DWH.EVENTS modify comission_rate NUMBER(*,10);
alter table DWH.EVENTS modify convert_rate NUMBER(*,4);
alter table DWH.EVENTS modify country_ru_nam VARCHAR2(116);
alter table DWH.EVENTS modify crm_contract_id_cd VARCHAR2(72);
alter table DWH.EVENTS modify crm_subject_cd VARCHAR2(72);
alter table DWH.EVENTS modify currency_leas_subject VARCHAR2(10);
alter table DWH.EVENTS modify event VARCHAR2(200);
alter table DWH.EVENTS modify inn_leaseholder varchar2(24);
alter table DWH.EVENTS modify kasko_crm_client_nam VARCHAR2(400);
alter table DWH.EVENTS modify leasing_subject_nam VARCHAR2(200);
alter table DWH.EVENTS modify leasing_subject_num VARCHAR2(8);
alter table DWH.EVENTS modify liquidity_group number;
alter table DWH.EVENTS modify manager_nam VARCHAR2(400);
alter table DWH.EVENTS modify model_nam VARCHAR2(200);
alter table DWH.EVENTS modify nam_leaseholder VARCHAR2(700);
alter table DWH.EVENTS modify offer_rate NUMBER(*,2);
alter table DWH.EVENTS modify okved_code varchar2(200);
alter table DWH.EVENTS modify payment_type_nam VARCHAR2(400);
alter table DWH.EVENTS modify prepay_rate NUMBER(*,10);
alter table DWH.EVENTS modify pre_contract_id_cd VARCHAR2(600);
alter table DWH.EVENTS modify product_nam VARCHAR2(200);
alter table DWH.EVENTS modify rehiring_flg varchar2(1);
alter table DWH.EVENTS modify stage VARCHAR2(200);
alter table DWH.EVENTS modify subsidy_flg varchar2(1);
alter table DWH.EVENTS modify supplier_nam VARCHAR2(700);
alter table DWH.EVENTS modify event_date date;
alter table DWH.EVENTS modify task_subject VARCHAR2(700);
alter table DWH.EVENTS modify testdrive_flg varchar2(1);
alter table DWH.EVENTS modify used_flg varchar2(1);
----
alter table DWH.EVENTS modify advance_percent NUMBER(*,2);
alter table DWH.EVENTS modify agent_fee_amt NUMBER(*,2);
alter table DWH.EVENTS modify agent_fee_rate NUMBER(*,2);
alter table DWH.EVENTS modify comission_amt NUMBER(*,2);
alter table DWH.EVENTS modify finance_amt NUMBER(*,2);
alter table DWH.EVENTS modify fullcost_amt NUMBER(*,2);
alter table DWH.EVENTS modify offer_rate NUMBER(*,2);
alter table DWH.EVENTS modify plan_amt NUMBER(*,2);
alter table DWH.EVENTS modify prepay_amt NUMBER(*,2);
alter table DWH.EVENTS modify redemption_amt NUMBER(*,2);
alter table DWH.EVENTS modify reduce_step NUMBER(*,2);
alter table DWH.EVENTS modify subsidy_amt NUMBER(*,2);
alter table DWH.EVENTS modify subsidy_share NUMBER(*,2);
alter table DWH.EVENTS modify advpayment NUMBER;
--Virtual Columns
--alter table DWH.EVENTS drop column w_rate;
--alter table DWH.EVENTS drop column w_advance;
--alter table DWH.EVENTS drop column w_agent_fee_amt;
--alter table DWH.EVENTS drop column w_commission_amt;
--alter table DWH.EVENTS drop column w_lease_term;
--alter table DWH.EVENTS drop column w_reduce_step;
--alter table DWH.EVENTS add agreement_key   NUMBER;
--alter table DWH.EVENTS add w_rate                as (OFFER_RATE*(CONVERT_RATE*FULLCOST_AMT-PREPAY_AMT));      
--alter table DWH.EVENTS add w_advance             as (PREPAY_RATE*FULLCOST_AMT*CONVERT_RATE);                  
--alter table DWH.EVENTS add w_agent_fee_amt       as (FULLCOST_AMT*AGENT_FEE_RATE*CONVERT_RATE);               
--alter table DWH.EVENTS add w_commission_amt      as (COMISSION_RATE *(FINANCE_AMT*CONVERT_RATE - PREPAY_AMT));
--alter table DWH.EVENTS add w_lease_term          as (LEASE_TERM*(FINANCE_AMT*CONVERT_RATE-PREPAY_AMT));       
--alter table DWH.EVENTS add w_reduce_step         as (REDUCE_STEP*(FINANCE_AMT*CONVERT_RATE-PREPAY_AMT));      

alter table DWH.EVENTS add task_begin_dt date;       
alter table DWH.EVENTS add task_end_dt date;      
  
  
  
  	
  
  
