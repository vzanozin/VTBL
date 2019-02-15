create table dwh.event_stage as
select 10000001 EVENT_NUM,
       'Запуск задачи на верификацию' STAGE
  from dual
union all
select 10000002 EVENT_NUM,
       'Запуск задачи на Экпертизу УОБ' STAGE
  from dual
union all
select 10000003 EVENT_NUM,
       'Закрыте экспертизы УОБ' STAGE
  from dual
union all
select 10000004 EVENT_NUM,
       'Закрытие экспертизы УАиКР' STAGE
  from dual
union all
select 10000005 EVENT_NUM,
       'Запуск задачи на Одобрение' STAGE
  from dual
union all
select 10000006 EVENT_NUM,
       'Закрытие задачи Одобрения' STAGE
  from dual
union all
select 10000007 EVENT_NUM,
       'Запуск задачи подготовки договоров' STAGE
  from dual
union all
select 10000008 EVENT_NUM,
       'Закрытие подготовки договоров' STAGE
  from dual
union all
select 10000009 EVENT_NUM, 'Подписание договоров' STAGE
  from dual
union all
select 10000010 EVENT_NUM, 'Передача в лизинг' STAGE
  from dual;
