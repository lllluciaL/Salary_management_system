create or replace procedure pro_quit(p_qno quit.qno%type,p_sno quit.sno%type,p_reason quit.quit_reason%type,p_submitdate quit.submit_date%type,p_quitdate quit.quit_date%type) is
begin
  insert
  into quit 
  values(p_qno,p_sno,p_reason,p_submitdate,p_quitdate);
end pro_quit;
/
