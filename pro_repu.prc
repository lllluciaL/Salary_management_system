create or replace procedure pro_repu(p_no rewardpunish.sno%type) is
  rno rewardpunish.rno%type;
  item rewardpunish.item%type;
  property rewardpunish.property%type;
  amount rewardpunish.amount%type;
  cursor c1 is
  select rno,item,property,amount
  from rewardpunish 
  where sno=p_no;
begin
  open c1;
  loop
    fetch c1 into rno,item,property,amount;
    exit when c1%notfound;
    dbms_output.put_line(rno||','||p_no||','||'事项'||','||item||','||'性质'||','||property||','||'金额'||amount);
  end loop;
  close c1;
end pro_repu;
/
