# Before Insert
DELIMITER $$
CREATE TRIGGER addSalaryToEmployee
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	INSERT INTO salaries (id, hours_no, hourly_rate) VALUES (NEW.salary_id, 0, 0);
END $$
DELIMITER ;

##############################################

# After Insert
DELIMITER $$
CREATE TRIGGER increaseEmployeesStatistics
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
	UPDATE statistics SET employees_no = employees_no + 1;
END $$
DELIMITER ;

##############################################

# After Delete
DELIMITER $$
CREATE TRIGGER decreaseEmployeesStatistics
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
	UPDATE statistics SET employees_no = employees_no - 1;
END $$
DELIMITER ;