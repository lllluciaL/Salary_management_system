create or replace procedure pro_off(dno dayoff.dno%type,p_sno dayoff.sno%type,reason dayoff.off_reason%type,offdate dayoff.off_date%type,backdate dayoff.back_date%type,length dayoff.off_length%type,permit dayoff.permit%type) is
begin
  insert
  into dayoff
  values(dno,p_sno,reason,offdate,backdate,length,permit);
end pro_off;
/
