create or replace procedure pro_addstaff(pno staff.sno%type,birth resume.birth%type,major resume.major%type,college resume.college%type,start_coldate resume.start_coldate%type,end_coldate resume.end_coldate%type,high resume.high%type,start_highdate resume.start_highdate%type,end_highdate resume.end_highdate%type,sname staff.name%type,ssex staff.ssex%type,jname staff.jname%type,department staff.department%type,status staff.status%type) is
begin
  insert
  into resume
  values(sname,birth,major,college,start_coldate,end_coldate,high,start_highdate,end_highdate);
  insert
  into staff
  values(pno,sname,ssex,jname,department,status);
end pro_addstaff;
/
