create or replace procedure pro_change(jcno jobchange.jcno%type,p_sno jobchange.sno%type,oldjname jobchange.oldjname%type,olddepart jobchange.olddepart%type,newjname jobchange.newjname%type,newdepart jobchange.newdepart%type) is
begin
 insert 
 into jobchange
 values(jcno,p_sno,oldjname,olddepart,newjname,newdepart);
 
 update staff
 set jname=newjname
 where sno=p_sno;

 update staff
 set department=newdepart
 where sno=p_sno;
end pro_change;
/
