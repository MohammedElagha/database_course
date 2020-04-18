# Create function with variables, and use it in SELECT FROM TABLE

DELIMITER $$

CREATE FUNCTION ComputeSalaryTax (salary DOUBLE)
RETURNS DOUBLE
BEGIN
	DECLARE tax DOUBLE;
    SET tax = 0.07;
	# 0.07
    RETURN salary * tax;

END $$

DELIMITER ;

############################################

# use function
SELECT id, salary, ComputeSalaryTax(salary) AS tax FROM salaries;