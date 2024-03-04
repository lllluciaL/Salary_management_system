create or replace procedure pro_selectchange(no jobchange.sno%type) is
 jcno jobchange.jcno%type;
 oldjname jobchange.oldjname%type;
 olddepart jobchange.olddepart%type;
 newjname jobchange.newjname%type;
 newdepart jobchange.newdepart%type;
begin
 select jcno,oldjname,olddepart,newjname,newdepart
 into jcno,oldjname,olddepart,newjname,newdepart
 from jobchange
 where sno=no;
 dbms_output.put_line(jcno||','||no||','||oldjname||','||olddepart||','||newjname||','||newdepart);
end pro_selectchange;
/
