# Create procedure & execute SQL in block

DELIMITER $$

CREATE PROCEDURE AddToSalary (addition INT)

BEGIN
	UPDATE salaries SET salary = salary + addition;
END $$

DELIMITER ;

##########################################

# Use procedure
# using CALL; not SELECT

# add 50 bounds to salaries
CALL AddToSalary(50);