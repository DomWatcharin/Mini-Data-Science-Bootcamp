-- select all column from customers 
-- SELECT * FROM customers;

--
/* multiline comment*/
/*SELECT 
	firstname AS fname, 
    lastname lname,
    firstname || " " || lastname AS full_name,
    company AS google_company,
    LOWER(firstname || "@google.com") AS email
FROM 
	customers*/

-- use of WHERE
/*SELECT
	firstname,
    country,
    company,
    email
FROM
	customers
WHERE
	--LOWER(country) = "usa" OR UPPER(country) = "FRANCE" OR  UPPER(country) = "UNITED KINGDOM"
    --LOWER(country) in ('usa','france','united kingdom','brazil')
    
    --pattern matching
    --email like '%yahoo%'*/

-- Aggregate function
/*SELECT
	SUM(total) AS revenue,
    AVG(total),
    MIN(total),
    MAX(total),
    COUNT(total),
    ROUND(SUM(total)*0.08,2) AS vat_8_percent
FROM
	invoices*/

-- AGG + GROUP BY
/*SELECT
	country,
    COUNT(*)
FROM
	customers
GROUP BY
	country;*/

-- filter = null
/*SELECT
	firstname,
    company
FROM
	customers
WHERE
	company ISNULL*/
    
-- ORDER BY
/*SELECT
	name,
    milliseconds,
    bytes
FROM
	tracks
ORDER BY 
	bytes DESC*/
 
 -- JOIN Multiple Tables
SELECT
	--ar.name, -- table.com=lumn
    --al.title,
    --tr.name,
    --tr.milliseconds,
    --tr.Bytes,
    ge.name,
    COUNT(*) AS songs
FROM artists ar
INNER JOIN albums al ON ar.artistid = al.artistid
LEFT JOIN tracks tr ON al.albumid = tr.albumid
LEFT JOIN genres ge ON tr.genreid = ge.GenreId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5


-- export to csv pivot table
/*SELECT
	*
FROM artists ar
INNER JOIN albums al ON ar.artistid = al.artistid
LEFT JOIN tracks tr ON al.albumid = tr.albumid
LEFT JOIN genres ge ON tr.genreid = ge.GenreId*/