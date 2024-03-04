create or replace procedure pro_selectoff(no dayoff.sno%type) is
  dno dayoff.dno%type;
  reason dayoff.off_reason%type;
  offdate dayoff.off_date%type;
  backdate dayoff.back_date%type;
  length dayoff.off_length%type;
  permit dayoff.permit%type;
  cursor c2 is
  select dno,off_reason,off_date,back_date,off_length,permit
  from dayoff
  where sno=no;
begin
  open c2;
  loop 
    fetch c2 into dno,reason,offdate,backdate,length,permit;
    exit when c2%notfound;
    dbms_output.put_line('��ټ�¼��ţ�'||dno||' ���ţ�'||no||' ���ԭ��'||reason||' ��ʼʱ�䣺'||offdate||' ����ʱ�䣺'||backdate||' ���������'||length||' ���������'||permit);
  end loop;
  close c2;
end pro_selectoff;
/
