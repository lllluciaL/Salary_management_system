create or replace trigger tri_changestaff
  after update or insert on staff
  for each row
declare
  -- local variables here
begin
  update undertake
  set jname=:new.jname,department=:new.department,pay=
      (select pay
       from job
       where jname=:new.jname and department=:new.department)
  where sno=:new.sno;
  update basicsalary
  set pay=
      (select pay
       from job
       where jname=:new.jname and department=:new.department)
  where sno=:new.sno;
end tri_changestaff;
/
