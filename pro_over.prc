create or replace procedure pro_over(ono overtime.ono%type,sno overtime.sno%type,overtime_date overtime.overtime_date%type,overtime_time overtime.overtime_time%type) is
begin
  insert
  into overtime
  values(ono,sno,overtime_date,overtime_time);
end pro_over;
/
