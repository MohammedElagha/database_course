# create function
DELIMITER $$
CREATE FUNCTION test_multiply (num_1 INT, num_2 INT) RETURNS INT
BEGIN
	RETURN num_1 *	 num_2;
END $$

DELIMITER ;

#####################################################################

# call function
SELECT test_sum(5, 12);
# or
SELECT test_sum(5, 12) AS sum_result;