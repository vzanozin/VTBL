create table dwh.event_stage as
select 10000001 EVENT_NUM,
       '������ ������ �� �����������' STAGE
  from dual
union all
select 10000002 EVENT_NUM,
       '������ ������ �� ��������� ���' STAGE
  from dual
union all
select 10000003 EVENT_NUM,
       '������� ���������� ���' STAGE
  from dual
union all
select 10000004 EVENT_NUM,
       '�������� ���������� �����' STAGE
  from dual
union all
select 10000005 EVENT_NUM,
       '������ ������ �� ���������' STAGE
  from dual
union all
select 10000006 EVENT_NUM,
       '�������� ������ ���������' STAGE
  from dual
union all
select 10000007 EVENT_NUM,
       '������ ������ ���������� ���������' STAGE
  from dual
union all
select 10000008 EVENT_NUM,
       '�������� ���������� ���������' STAGE
  from dual
union all
select 10000009 EVENT_NUM, '���������� ���������' STAGE
  from dual
union all
select 10000010 EVENT_NUM, '�������� � ������' STAGE
  from dual;
