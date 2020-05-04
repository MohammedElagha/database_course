DELIMITER $$

CREATE FUNCTION loopDemo () RETURNS INT
BEGIN

DECLARE i INT;
SET i = 0;

loop_label: LOOP
    IF i = 9 THEN
    	LEAVE loop_label;
    END IF;
    
    SET i = i + 1;
END LOOP;

RETURN i;

END $$

DELIMITER ;