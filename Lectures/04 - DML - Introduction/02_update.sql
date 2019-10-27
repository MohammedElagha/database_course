/* Update 'credit' value for all rows in 'courses' table */
UPDATE courses SET credit = 3;

/* Update 'c_no' of only Data Structures course */
UPDATE courses SET c_no = 'ITCSS8778'
WHERE NAME = 'Data Structures'

/* Update 'credit' for only rows with id = 3 or 4 */
UPDATE courses SET credit = 2
WHERE id = 3 OR id = 4;

/* Update 'credit' for only rows with id = 3 and 4 (impossible condition, because no row has id = 3 and 4 at the same time) */
UPDATE courses SET credit = 2
WHERE id = 3 AND id = 4;

/* Update 'credit' for rows with id > or = 8 */
UPDATE courses SET credit = 2
WHERE id >= 8;