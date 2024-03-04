create or replace procedure pro_retire(rno retirement.rno%type,sno retirement.sno%type,birth retirement.birth%type,startdate retirement.startdate%type,retiredate retirement.retiredate%type) is
begin
  insert
   into retirement
   values(rno,sno,birth,startdate,retiredate);
end pro_retire;
/
