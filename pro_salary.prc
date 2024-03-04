create or replace procedure pro_salary(p_no salary_view.no%type) is
  pay salary_view.totalpay%type;
  total salary_view.totalpay%type;
begin
  select totalpay
  into pay
  from salary_view
  where no=p_no;
  if pay<=5000
    then total:=pay;
  elsif pay>5000 and pay<=8000
    then total:=pay-(pay-5000)*0.03;
  elsif pay>8000 and pay<=17000
    then total:=pay-90-(pay-8000)*0.1;
  elsif pay>17000 and pay<=30000
    then total:=pay-990-(pay-17000)*0.2;
  elsif pay>30000
    then total:=pay-3590-(pay-30000)*0.25;
  end if;
  dbms_output.put_line('工号：'||p_no||' '||'税前工资：'||pay||' 税后工资：'||total);
end pro_salary;
/
