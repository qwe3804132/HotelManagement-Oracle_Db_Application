CREATE OR REPLACE TRIGGER  GP_ROOMINVENTORY_TRG1
BEFORE
update on GP_ROOMINVENTORY
for each row
begin
 INSERT INTO gp_room_history
 VALUES (:OLD.ROOM_ID, :OLD.SQUAREFEET, :OLD.ROOMTYPE, :OLD.ROOMDESCRIPTION);