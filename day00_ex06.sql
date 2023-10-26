SELECT (SELECT name FROM person p WHERE p.id = po.person_id) AS check_name,
CASE
	WHEN (SELECT name FROM person p WHERE p.id = po.person_id) = 'Denis' THEN 'true'
	ELSE 'false'
END
FROM person_order AS po
WHERE (po.menu_id = 13 OR po.menu_id = 14 OR po.menu_id = 18)
  AND po.order_date = '2022-01-07';

