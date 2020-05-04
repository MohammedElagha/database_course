DELIMITER $$

CREATE FUNCTION cursorDemo () RETURNS DOUBLE

BEGIN

DECLARE done INT DEFAULT FALSE;

DECLARE max_salary DOUBLE;
DECLARE current_salary DOUBLE;

DECLARE salaries_cursor CURSOR FOR SELECT salary FROM salaries;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

SET max_salary = 0;

OPEN salaries_cursor;

salaries_loop: LOOP
	FETCH salaries_cursor INTO current_salary;
    
    IF done THEN
    	LEAVE salaries_loop;
    END IF;
            
    IF current_salary > max_salary THEN
    	SET max_salary = current_salary;
    END IF;
END LOOP;

CLOSE salaries_cursor;

RETURN max_salary;
END $$

DELIMITER ;