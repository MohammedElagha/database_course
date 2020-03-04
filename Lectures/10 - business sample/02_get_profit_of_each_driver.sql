# Get profit of each driver

# using join
SELECT (profit_percentage / 100) * SUM(payed)
FROM drivers
INNER JOIN travels ON drivers.id = travels.driver_id
GROUP BY travels.driver_id;
# group by drivers.id

# or using nested query
SELECT (profit_percentage / 100) * (SELECT SUM(payed) FROM travels WHERE driver_id = drivers.id)
FROM drivers