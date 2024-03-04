create or replace trigger tri_retire
  after insert on  retirement 
  for each row
declare
  -- local variables here
begin
  update staff
  set status='ÍËĞİ'
  where sno=:new.sno;
end tri_retire;
/
