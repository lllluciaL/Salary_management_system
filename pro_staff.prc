create or replace procedure pro_staff(p_name resume.name%type) is
 birth resume.birth%type;
 major resume.major%type;
 college resume.college%type;
 start_coldate resume.start_coldate%type;
 end_coldate resume.end_coldate%type;
 high resume.high%type;
 start_highdate resume.start_highdate%type;
 end_highdate resume.end_highdate%type;
begin
 select birth, major,college,start_coldate,end_coldate,high,start_highdate,end_highdate
 into birth, major,college,start_coldate,end_coldate,high,start_highdate,end_highdate
 from resume
 where name=p_name;
 dbms_output.put_line(p_name||','||birth||','|| major||','||college||','||start_coldate||','||end_coldate||','||high||','||start_highdate||','||end_highdate);
end pro_staff;                                
/
