USE SqlAssignment;


--1.
SELECT Snum, Sname, City, Comm
    FROM SalesPeople;
    GO
--Output:
-- +------+---------+-----------+------+
-- | Snum | Sname   | City      | Comm |
-- +------+---------+-----------+------+
-- | 1001 | Peel    | London    | 0.12 |
-- | 1002 | Serres  | San Jose  | 0.13 |
-- | 1003 | Axelrod | New york  |  0.1 |
-- | 1004 | Motika  | London    | 0.11 |
-- | 1007 | Rafkin  | Barcelona | 0.15 |
-- +------+---------+-----------+------+


--2.
SELECT DISTINCT Snum
   FROM Orders;
   GO
-- Output:
-- +------+
-- | Snum |
-- +------+
-- | 1001 |
-- | 1002 |
-- | 1003 |
-- | 1004 |
-- | 1007 |
-- +------+


--3.
SELECT Sname, Comm
    FROM SalesPeople
    WHERE City='London';
    GO
-- Output:
-- +--------+------+
-- | Sname  | Comm |
-- +--------+------+
-- | Peel   | 0.12 |
-- | Motika | 0.11 |
-- +--------+------+


--4.
SELECT Cname
    FROM Customers
    WHERE Rating=100;
    GO
-- Output:
-- +---------+
-- | Cname   |
-- +---------+
-- | Hoffman |
-- | Grass   |
-- | Pereira |
-- +---------+


--5.
SELECT Onum, AMT, Odate
    FROM Orders;
    GO
-- Output:
-- +-------+---------+------------+
-- | Onum  | AMT     | Odate      |
-- +-------+---------+------------+
-- |  3001 |   18.69 | 1994-10-03 |
-- |  3002 |  1900.1 | 1994-10-03 |
-- |  3003 |  767.19 | 1994-10-03 |
-- |  3005 | 5160.45 | 1994-10-03 |
-- |  3006 | 1098.16 | 1994-10-04 |
-- |  3007 |   75.75 | 1994-10-04 |
-- |  3008 |    4723 | 1994-10-05 |
-- |  3009 | 1713.23 | 1994-10-04 |
-- | 30010 | 1309.95 | 1994-10-06 |
-- | 30011 | 9891.88 | 1994-10-06 |
-- +-------+---------+------------+


--6.
SELECT Cname FROM Customers
    WHERE Rating>200;
    GO
-- Output:
-- +---------+
-- | Cname   |
-- +---------+
-- | Liu     |
-- | Clemens |
-- +---------+


--7.
SELECT Cname FROM Customers 
    WHERE City='San Jose'
    AND
    Rating>200;
    GO
-- Output:
-- +-------+
-- | Cname |
-- +-------+
-- | Liu   |
-- +-------+


--8.
SELECT Cname FROM Customers 
    WHERE City='San Jose'
    OR
    Rating>200;
    GO
-- Output:
-- +---------+
-- | Cname   |
-- +---------+
-- | Liu     |
-- | Clemens |
-- +---------+


--9.
SELECT * FROM Orders 
    WHERE AMT>1000;
    GO
-- Output:
-- +-------+---------+------------+------+------+
-- | Onum  | AMT     | Odate      | Cnum | Snum |
-- +-------+---------+------------+------+------+
-- |  3002 |  1900.1 | 1994-10-03 | 2007 | 1004 |
-- |  3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
-- |  3006 | 1098.16 | 1994-10-04 | 2004 | 1007 |
-- |  3008 |    4723 | 1994-10-05 | 2006 | 1001 |
-- |  3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
-- | 30010 | 1309.95 | 1994-10-06 | 2004 | 1002 |
-- | 30011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
-- +-------+---------+------------+------+------+


--10.
SELECT Sname, City
    FROM SalesPeople
    WHERE City='London'
    AND 
    Comm>0.10;
    GO
-- Output:
-- +--------+--------+
-- | Sname  | City   |
-- +--------+--------+
-- | Peel   | London |
-- | Motika | London |
-- +--------+--------+


--11.
SELECT * FROM Customers 
    WHERE Rating <=100
    AND
    City <> "Rome";
    GO
-- Output:
-- +------+---------+--------+--------+------+
-- | Cnum | Cname   | City   | Rating | Snum |
-- +------+---------+--------+--------+------+
-- | 2001 | Hoffman | London |    100 | 1001 |
-- | 2004 | Grass   | Brelin |    100 | 1002 |
-- +------+---------+--------+--------+------+


--12.
SELECT * FROM SalesPeople
    WHERE City
    IN ('Barcelona','London');
    GO
-- Output:
-- +------+--------+-----------+------+
-- | Snum | Sname  | CITY      | Comm |
-- +------+--------+-----------+------+
-- | 1001 | Peel   | London    | 0.12 |
-- | 1004 | Motika | London    | 0.11 |
-- | 1007 | Rafkin | Barcelona | 0.15 |
-- +------+--------+-----------+------+


--13.
SELECT * FROM SalesPeople
    WHERE Comm 
    BETWEEN 0.10 AND 0.12;
    GO
-- Output:
-- +------+---------+----------+------+
-- | Snum | Sname   | CITY     | Comm |
-- +------+---------+----------+------+
-- | 1001 | Peel    | London   | 0.12 |
-- | 1003 | Axelrod | New york |  0.1 |
-- | 1004 | Motika  | London   | 0.11 |
-- +------+---------+----------+------+


--14.
SELECT * FROM Orders
    WHERE Odate IN ('1994-10-03', '1994-10-04');
    GO
-- Output:
-- +------+---------+------------+------+------+
-- | Onum | AMT     | Odate      | Cnum | Snum |
-- +------+---------+------------+------+------+
-- | 3001 |   18.69 | 1994-10-03 | 2004 | 1007 |
-- | 3002 |  1900.1 | 1994-10-03 | 2007 | 1004 |
-- | 3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
-- | 3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
-- | 3006 | 1098.16 | 1994-10-04 | 2004 | 1007 |
-- | 3007 |   75.75 | 1994-10-04 | 2004 | 1002 |
-- | 3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
-- +------+---------+------------+------+------+


--15.
SELECT * FROM Customers
    WHERE Snum IN
    (SELECT Snum FROM SalesPeople
    WHERE Sname IN ('Peel', 'Motika'));
    GO

-- Output:
-- +------+---------+--------+--------+------+
-- | Cnum | Cname   | City   | Rating | Snum |
-- +------+---------+--------+--------+------+
-- | 2001 | Hoffman | London |    100 | 1001 |
-- | 2007 | Pereira | Rome   |    100 | 1004 |
-- +------+---------+--------+--------+------+


--16.
SELECT * FROM Customers
    WHERE Cname LIKE 'A%'
    OR Cname LIKE 'B%';
    GO
-- Output:
-- Empty set (0.00 sec)


--17.
SELECT * FROM Orders
    WHERE AMT <> 0 
    AND
    AMT IS NOT NULL;
    GO
-- Output:
-- +-------+---------+------------+------+------+
-- | Onum  | AMT     | Odate      | Cnum | Snum |
-- +-------+---------+------------+------+------+
-- |  3001 |   18.69 | 1994-10-03 | 2004 | 1007 |
-- |  3002 |  1900.1 | 1994-10-03 | 2007 | 1004 |
-- |  3003 |  767.19 | 1994-10-03 | 2001 | 1001 |
-- |  3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
-- |  3006 | 1098.16 | 1994-10-04 | 2004 | 1007 |
-- |  3007 |   75.75 | 1994-10-04 | 2004 | 1002 |
-- |  3008 |    4723 | 1994-10-05 | 2006 | 1001 |
-- |  3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
-- | 30010 | 1309.95 | 1994-10-06 | 2004 | 1002 |
-- | 30011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
-- +-------+---------+------------+------+------+


--18.
SELECT COUNT(DISTINCT Snum) 
    AS 'Number of salesperson currently listening orders'
    FROM Orders;
    GO
-- Output:
-- +--------------------------------------------------+
-- | Number of salesperson currently listening orders |
-- +--------------------------------------------------+
-- |                                                5 |
-- +--------------------------------------------------+


--19.
SELECT Snum,MAX(AMT) 
    FROM Orders 
    GROUP BY Snum;
    GO
-- Output:
-- +------+----------+
-- | Snum | MAX(AMT) |
-- +------+----------+
-- | 1001 |  9891.88 |
-- | 1002 |  5160.45 |
-- | 1003 |  1713.23 |
-- | 1004 |   1900.1 |
-- | 1007 |  1098.16 |
-- +------+----------+


--20.
SELECT Snum,MAX(AMT) 
    FROM Orders 
    GROUP BY Snum 
    HAVING MAX(AMT)>3000;
    GO
-- Output:
-- +------+----------+
-- | Snum | MAX(AMT) |
-- +------+----------+
-- | 1001 |  9891.88 |
-- | 1002 |  5160.45 |
-- +------+----------+


--21.
SELECT Odate FROM Orders  
    WHERE AMT=
    (SELECT MAX(AMT) FROM Orders);
    GO
-- Output:
-- +------------+
-- | Odate      |
-- +------------+
-- | 1994-10-06 |
-- +------------+


--22
SELECT COUNT(Onum)
    AS "All orders of Oct 3rd"
    FROM Orders
    WHERE Odate='1994-10-03';
    GO
-- Output:
-- +-----------------------+
-- | All orders of Oct 3rd |
-- +-----------------------+
-- |                     4 |
-- +-----------------------+


--23.
SELECT DISTINCT City 
    FROM Customers
    WHERE City IS NOT NULL;
    GO
-- Output:
-- +----------+
-- | City     |
-- +----------+
-- | London   |
-- | Rome     |
-- | San Jose |
-- | Brelin   |
-- +----------+


--24.
SELECT Cnum, MIN(AMT) 
    FROM Orders 
    GROUP BY Cnum;
    GO
-- Output:
-- +------+----------+
-- | Cnum | MIN(AMT) |
-- +------+----------+
-- | 2001 |   767.19 |
-- | 2002 |  1713.23 |
-- | 2003 |  5160.45 |
-- | 2004 |    18.69 |
-- | 2006 |     4723 |
-- | 2007 |   1900.1 |
-- +------+----------+


--25.
SELECT * FROM Customers
    WHERE Cname LIKE 'G%'
    LIMIT 1;
    GO
-- Output:
-- +------+----------+------+--------+------+
-- | Cnum | Cname    | City | Rating | Snum |
-- +------+----------+------+--------+------+
-- | 2002 | Giovanne | Rome |    200 | 1003 |
-- +------+----------+------+--------+------+



--26.
SELECT CONCAT('For ', Odate, ' there are orders: ', COUNT(Onum))
    AS "Order details"
    FROM Orders 
    GROUP BY Odate;
    GO
-- Output:
-- +------------------------------------+
-- | Order details                      |
-- +------------------------------------+
-- | For 1994-10-03 there are orders: 4 |
-- | For 1994-10-04 there are orders: 3 |
-- | For 1994-10-05 there are orders: 1 |
-- | For 1994-10-06 there are orders: 2 |
-- +------------------------------------+



--27
SELECT Onum, Snum, AMT, AMT * 0.12 AS 'Commission'
    FROM Orders
    ORDER BY Snum;
    GO
-- Output:
-- +-------+------+---------+--------------------+
-- | Onum  | Snum | AMT     | Commission         |
-- +-------+------+---------+--------------------+
-- |  3003 | 1001 |  767.19 |  92.06280029296875 |
-- |  3008 | 1001 |    4723 |             566.76 |
-- | 30011 | 1001 | 9891.88 |    1187.0255859375 |
-- |  3005 | 1002 | 5160.45 |     619.2540234375 |
-- |  3007 | 1002 |   75.75 |               9.09 |
-- | 30010 | 1002 | 1309.95 |   157.193994140625 |
-- |  3009 | 1003 | 1713.23 | 205.58759765624998 |
-- |  3002 | 1004 |  1900.1 |  228.0119970703125 |
-- |  3001 | 1007 |   18.69 |  2.242800064086914 |
-- |  3006 | 1007 | 1098.16 |  131.7792041015625 |
-- +-------+------+---------+--------------------+


--28.
SELECT CONCAT('For the city ',
    City,
    ', the highest rating is: ',
    MAX(Rating))
    AS "Ratings Summary"
    FROM Customers
    GROUP BY City;
    GO
-- Output:
-- +---------------------------------------------------+
-- | Ratings Summary                                   |
-- +---------------------------------------------------+
-- | For the city London, the highest rating is: 300   |
-- | For the city Rome, the highest rating is: 200     |
-- | For the city San Jose, the highest rating is: 300 |
-- | For the city Brelin, the highest rating is: 100   |
-- +---------------------------------------------------+


--29.
SELECT Odate, COUNT(Onum) 
    FROM Orders 
    GROUP BY Odate 
    ORDER BY COUNT(Onum) DESC;
    GO
-- Output:
-- +------------+-------------+
-- | Odate      | COUNT(Onum) |
-- +------------+-------------+
-- | 1994-10-03 |           4 |
-- | 1994-10-04 |           3 |
-- | 1994-10-06 |           2 |
-- | 1994-10-05 |           1 |
-- +------------+-------------+


--30.
SELECT * FROM SalesPeople s
    INNER JOIN 
    Customers as c
    ON s.City=c.City;
    GO
-- Output:
-- +------+--------+----------+------+------+---------+----------+--------+------+
-- | Snum | Sname  | CITY     | Comm | Cnum | Cname   | City     | Rating | Snum |
-- +------+--------+----------+------+------+---------+----------+--------+------+
-- | 1004 | Motika | London   | 0.11 | 2001 | Hoffman | London   |    100 | 1001 |
-- | 1001 | Peel   | London   | 0.12 | 2001 | Hoffman | London   |    100 | 1001 |
-- | 1002 | Serres | San Jose | 0.13 | 2003 | Liu     | San Jose |    300 | 1002 |
-- | 1004 | Motika | London   | 0.11 | 2006 | Clemens | London   |    300 | 1007 |
-- | 1001 | Peel   | London   | 0.12 | 2006 | Clemens | London   |    300 | 1007 |
-- +------+--------+----------+------+------+---------+----------+--------+------+



--31.
SELECT c.Cname, s.Sname 
    FROM Customers c
    LEFT JOIN SalesPeople AS s
    ON c.Snum = s.Snum;
    GO
-- Output:
-- +----------+---------+
-- | Cname    | Sname   |
-- +----------+---------+
-- | Hoffman  | Peel    |
-- | Giovanne | Axelrod |
-- | Liu      | Serres  |
-- | Grass    | Serres  |
-- | Clemens  | Rafkin  |
-- | Pereira  | Motika  |
-- +----------+---------+



--32.
 SELECT o.Onum, c.Cname 
    FROM Orders o 
    LEFT JOIN Customers AS c 
    ON o.Cnum =c.Cnum;
    GO
-- Output:
-- +-------+----------+
-- | Onum  | Cname    |
-- +-------+----------+
-- |  3003 | Hoffman  |
-- |  3009 | Giovanne |
-- |  3005 | Liu      |
-- |  3001 | Grass    |
-- |  3006 | Grass    |
-- |  3007 | Grass    |
-- | 30010 | Grass    |
-- |  3008 | Clemens  |
-- | 30011 | Clemens  |
-- |  3002 | Pereira  |
-- +-------+----------+


--33.
SELECT Onum, Sname, Cname  
    FROM Orders, Customers, SalesPeople 
    WHERE 
    Orders.Cnum = Customers.Cnum 
    AND 
    Orders.Snum = SalesPeople.Snum;
    GO
-- Output:
-- +-------+---------+----------+
-- | Onum  | Sname   | Cname    |
-- +-------+---------+----------+
-- |  3003 | Peel    | Hoffman  |
-- |  3008 | Peel    | Clemens  |
-- | 30011 | Peel    | Clemens  |
-- |  3005 | Serres  | Liu      |
-- |  3007 | Serres  | Grass    |
-- | 30010 | Serres  | Grass    |
-- |  3009 | Axelrod | Giovanne |
-- |  3002 | Motika  | Pereira  |
-- |  3001 | Rafkin  | Grass    |
-- |  3006 | Rafkin  | Grass    |
-- +-------+---------+----------+


--34.
SELECT c.Cname, s.Sname
    FROM Customers c 
    LEFT JOIN 
    (SELECT Snum, Sname 
    FROM SalesPeople 
    WHERE Comm>0.12) 
    AS s 
    ON c.Snum=s.Snum 
    WHERE s.Snum IS NOT NULL;
    GO
-- Output:
-- +---------+--------+
-- | Cname   | Sname  |
-- +---------+--------+
-- | Liu     | Serres |
-- | Grass   | Serres |
-- | Clemens | Rafkin |
-- +---------+--------+


--35.
SELECT o.Onum, s.Sname, o.AMT*s.Comm AS 'Commission'
    FROM Orders o
    LEFT JOIN 
    (SELECT s1.Snum, s1.Sname, s1.Comm, c.Cnum 
    FROM Customers c 
    INNER JOIN 
    SalesPeople AS s1
    ON c.Snum=s1.Snum
    AND 
    c.Rating > 100) 
    AS s 
    ON o.Snum=s.Snum 
    WHERE s.Snum IS NOT NULL;
    GO
-- Output:
-- +-------+---------+--------------------+
-- | Onum  | Sname   | Commission         |
-- +-------+---------+--------------------+
-- |  3009 | Axelrod |  171.3230005997866 |
-- |  3005 | Serres  |  670.8585007836809 |
-- |  3007 | Serres  |  9.847499638795853 |
-- | 30010 | Serres  | 170.29348740601563 |
-- |  3001 | Rafkin  |  2.803500191509727 |
-- |  3006 | Rafkin  |   164.724011672497 |
-- +-------+---------+--------------------+


--36.
SELECT c1.Cname AS 'Customer 1',
    c2.Cname AS 'Customer 2', 
    c2.Rating 
    FROM Customers c1 
    LEFT JOIN 
    Customers AS c2 
    ON c1.Rating=c2.Rating 
    WHERE c1.Cname != c2.Cname;
    GO
-- Output:
-- +------------+------------+--------+
-- | Customer 1 | Customer 2 | Rating |
-- +------------+------------+--------+
-- | Pereira    | Hoffman    |    100 |
-- | Grass      | Hoffman    |    100 |
-- | Clemens    | Liu        |    300 |
-- | Pereira    | Grass      |    100 |
-- | Hoffman    | Grass      |    100 |
-- | Liu        | Clemens    |    300 |
-- | Grass      | Pereira    |    100 |
-- | Hoffman    | Pereira    |    100 |
-- +------------+------------+--------+



--37.
SELECT c.Cname, s.Sname 
    FROM Customers c 
    CROSS JOIN 
    (SELECT Sname 
    FROM SalesPeople 
    LIMIT 3)
    AS s;
    GO
-- Output:
-- | Cname    | Sname   |
-- +----------+---------+
-- | Hoffman  | Axelrod |
-- | Hoffman  | Serres  |
-- | Hoffman  | Peel    |
-- | Giovanne | Axelrod |
-- | Giovanne | Serres  |
-- | Giovanne | Peel    |
-- | Liu      | Axelrod |
-- | Liu      | Serres  |
-- | Liu      | Peel    |
-- | Grass    | Axelrod |
-- | Grass    | Serres  |
-- | Grass    | Peel    |
-- | Clemens  | Axelrod |
-- | Clemens  | Serres  |
-- | Clemens  | Peel    |
-- | Pereira  | Axelrod |
-- | Pereira  | Serres  |
-- | Pereira  | Peel    |
-- +----------+---------+


--38.
 SELECT * FROM Customers 
    WHERE City
    IN 
    (SELECT c.City 
    FROM Customers c 
    LEFT JOIN 
    SalesPeople AS s 
    ON 
    s.Sname='Serres' 
    AND 
    s.Snum=c.Snum 
    WHERE s.Snum IS NOT NULL);
    GO
Output:
-- +------+-------+----------+--------+------+
-- | Cnum | Cname | City     | Rating | Snum |
-- +------+-------+----------+--------+------+
-- | 2003 | Liu   | San Jose |    300 | 1002 |
-- | 2004 | Grass | Brelin   |    100 | 1002 |
-- +------+-------+----------+--------+------+


--39.
SELECT c1.Cname, c2.Cname, c1.Snum, c2.Snum 
    FROM Customers AS c1 
    CROSS JOIN Customers c2 
    WHERE c1.Snum=c2.Snum AND c1.Cname != c2.Cname;
    GO
-- Output:
-- +-------+-------+------+------+
-- | Cname | Cname | Snum | Snum |
-- +-------+-------+------+------+
-- | Liu   | Grass | 1002 | 1002 |
-- | Grass | Liu   | 1002 | 1002 |
-- +-------+-------+------+------+


--40.
SELECT s1.Sname, s1.City, s2.Sname, s2.City 
    FROM SalesPeople s1 
    CROSS JOIN 
    SalesPeople AS s2 
    ON s1.City=s2.City 
    AND s1.Sname!=s2.Sname 
    AND s1.Sname>s2.Sname;
    GO
-- Output:
-- +-------+--------+--------+--------+
-- | Sname | City   | Sname  | City   |
-- +-------+--------+--------+--------+
-- | Peel  | London | Motika | London |
-- +-------+--------+--------+--------+


--41.
SELECT Cname, City
    FROM Customers
    WHERE Rating=
    (SELECT Rating
    FROM Customers
    WHERE Cname='Hoffman');
    GO
-- Output:
-- +---------+--------+
-- | Cname   | City   |
-- +---------+--------+
-- | Hoffman | London |
-- | Grass   | Brelin |
-- | Pereira | Rome   |
-- +---------+--------+


--42.
SELECT * FROM Orders o
    LEFT JOIN
    SalesPeople AS s
    ON o.Snum=s.Snum
    WHERE s.Sname='Motika';
    GO
-- Output:
-- +------+--------+------------+------+------+------+--------+--------+------+
-- | Onum | AMT    | Odate      | Cnum | Snum | Snum | Sname  | CITY   | Comm |
-- +------+--------+------------+------+------+------+--------+--------+------+
-- | 3002 | 1900.1 | 1994-10-03 | 2007 | 1004 | 1004 | Motika | London | 0.11 |
-- +------+--------+------------+------+------+------+--------+--------+------+


--43.
SELECT o.Onum, s.Sname 
    FROM Orders o 
    LEFT JOIN 
    (SELECT s1.Snum, s1.Sname 
    FROM SalesPeople s1 
    LEFT JOIN Customers 
    AS c ON s1.Snum=c.Snum 
    WHERE c.Cname='Hoffman')
    AS s
    ON o.Snum=s.Snum
    WHERE s.Snum IS NOT NULL;
    GO
-- Output:
-- +-------+-------+
-- | Onum  | Sname |
-- +-------+-------+
-- |  3003 | Peel  |
-- |  3008 | Peel  |
-- | 30011 | Peel  |
-- +-------+-------+


--44.
SELECT * FROM Orders
    WHERE AMT > 
    (SELECT AVG(AMT)
    FROM Orders
    WHERE Odate='1994-10-04');
    GO
-- Output:
-- +-------+---------+------------+------+------+
-- | Onum  | AMT     | Odate      | Cnum | Snum |
-- +-------+---------+------------+------+------+
-- |  3002 |  1900.1 | 1994-10-03 | 2007 | 1004 |
-- |  3005 | 5160.45 | 1994-10-03 | 2003 | 1002 |
-- |  3006 | 1098.16 | 1994-10-04 | 2004 | 1007 |
-- |  3008 |    4723 | 1994-10-05 | 2006 | 1001 |
-- |  3009 | 1713.23 | 1994-10-04 | 2002 | 1003 |
-- | 30010 | 1309.95 | 1994-10-06 | 2004 | 1002 |
-- | 30011 | 9891.88 | 1994-10-06 | 2006 | 1001 |
-- +-------+---------+------------+------+------+


--45.
SELECT AVG(Comm) 
    FROM SalesPeople
    WHERE City='London';
    GO
--Output:
-- +---------------------+
-- | AVG(Comm)           |
-- +---------------------+
-- | 0.11499999836087227 |
-- +---------------------+


--46.
SELECT * FROM Orders o 
    LEFT JOIN 
    Customers AS c 
    ON o.Snum=c.Snum 
    WHERE c.City='London';
    GO
-- Output:
-- +------+--------+-----------+------+------+---------+--------+--------+------+
-- | Snum | Sname  | CITY      | Comm | Cnum | Cname   | City   | Rating | Snum |
-- +------+--------+-----------+------+------+---------+--------+--------+------+
-- | 1001 | Peel   | London    | 0.12 | 2001 | Hoffman | London |    100 | 1001 |
-- | 1007 | Rafkin | Barcelona | 0.15 | 2006 | Clemens | London |    300 | 1007 |
-- +------+--------+-----------+------+------+---------+--------+--------+------+


--47.
SELECT s.Sname, s.Comm 
    FROM SalesPeople s 
    LEFT JOIN 
    Customers AS c 
    ON s.Snum=c.Snum 
    WHERE c.City='London';
    GO
-- Output:
-- +--------+------+
-- | Sname  | Comm |
-- +--------+------+
-- | Peel   | 0.12 |
-- | Rafkin | 0.15 |
-- +--------+------+


--48.
SELECT * FROM Customers
    WHERE Cnum >
    (SELECT Snum+1000
    FROM SalesPeople
    WHERE Sname='Serres');
    GO
-- Output:
-- +------+---------+----------+--------+------+
-- | Cnum | Cname   | City     | Rating | Snum |
-- +------+---------+----------+--------+------+
-- | 2003 | Liu     | San Jose |    300 | 1002 |
-- | 2004 | Grass   | Brelin   |    100 | 1002 |
-- | 2006 | Clemens | London   |    300 | 1007 |
-- | 2007 | Pereira | Rome     |    100 | 1004 |
-- +------+---------+----------+--------+------+


--49.
SELECT COUNT(Cnum)
    FROM Customers
    WHERE Rating >
    (SELECT Rating 
    FROM Customers
    WHERE Cname='San Jose');
    GO
-- Output:
-- +-------------+
-- | COUNT(Cnum) |
-- +-------------+
-- |           0 |
-- +-------------+
