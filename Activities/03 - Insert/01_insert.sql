/* Add new 3 employees with their salaries */

INSERT INTO salaries (hours_no, hourly_rate)
VALUES (12, 10) , (14, 10) , (15, 16);
# Assume that new rows' IDs are: 66, 67, 68

INSERT INTO employees (NAME, phone, salary_id)
VALUES ('Ali', 9706655132, 67) , ('Ahmed', 970784153, 66) , ('Mohammed', 970321355, 68)