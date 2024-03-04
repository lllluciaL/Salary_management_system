create or replace trigger tri_quit
  after insert on quit   
  for each row
declare
  -- local variables here
begin
  update staff
  set status='ÀëÖ°'
  where sno=:new.sno;
end tri_quit;
/
