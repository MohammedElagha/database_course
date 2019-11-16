/* Dates & Times & Timestamp */

# Use it's in Insert
INSERT INTO shows (show_date, show_time, first_show)
VALUES ('2019-11-08', '16:20:00', '2019-10-30 10:00:00')

# Use it's in Update
UPDATE shows SET first_show = '2019-12-01 20:30:59'
WHERE first_show = '2019-10-30 10:00:00'

# Use it's with order by
SELECT * FROM shows
ORDER BY first_show DESC
LIMIT 1