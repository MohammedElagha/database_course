/* Between Operator */

# between
SELECT * FROM shows
WHERE show_date BETWEEN '2009-01-01' AND '2010-12-31'

# not between
SELECT * FROM shows
WHERE show_date NOT BETWEEN '2009-01-01' AND '2010-12-31'
