# Before Insert
DELIMITER $$
CREATE TRIGGER addSalaryToEmployee
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	INSERT INTO salaries (id, hours_no, hourly_rate) VALUES (NEW.salary_id, 0, 0);
END $$
DELIMITER ;


DELIMITER $$
create trigger updateSalaryWhenUpdateSalaryId 
BEFORE UPDATE on employees 
FOR EACH ROW
BEGIN 
UPDATE salaries SET id = NEW.salary_id WHERE id = OLD.salary_id; 
end
DELIMITER ;

##############################################

# After Insert
DELIMITER $$
CREATE TRIGGER increaseEmployeesStatistics
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
	UPDATE statistics SET val = val + 1 WHERE name = 'employees_no';
END $$
DELIMITER ;

##############################################

# After Delete
DELIMITER $$
CREATE TRIGGER decreaseEmployeesStatistics
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
	UPDATE statistics SET val = val - 1 WHERE name = 'employees_no';
END $$
DELIMITER ;