create or replace procedure pro_insurance(p_sno insurance.sno%type) is
  oldage insurance.oldaged_pay%type;
  med insurance.medicare_pay%type;
  house insurance.housing_pay%type;
  total insurance.total_pay%type;
begin
  select oldaged_pay,medicare_pay,housing_pay,total_pay
  into oldage,med,house,total
  from insurance
  where sno=p_sno;
  dbms_output.put_line('工号：'||p_sno||','||'养老保险：'||oldage||','||'医疗保险：'||med||','||'住房公积金：'||house||','||'总计：'||total);
end pro_insurance;
/
