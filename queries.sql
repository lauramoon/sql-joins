-- write your queries here
-- every record --
SELECT * FROM  owners o FULL 
JOIN vehicles v ON o.id = v.owner_id;
-- car counts --
SELECT o.first_name, o.last_name, COUNT(*) 
FROM owners o 
JOIN vehicles v on o.id = v.owner_id 
GROUP BY o.id
ORDER BY first_name;
-- average price --
SELECT first_name, last_name, SUM(price)/COUNT(*) AS average_price, COUNT(*)
FROM owners o 
JOIN vehicles v on o.id = v.owner_id 
GROUP BY o.id
HAVING COUNT(*) > 1 and SUM(price)/COUNT(*) > 10000
ORDER BY first_name DESC;
