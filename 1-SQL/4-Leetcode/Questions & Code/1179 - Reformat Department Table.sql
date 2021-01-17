/*Question:

Table: Department

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| revenue       | int     |
| month         | varchar |
+---------------+---------+
(id, month) is the primary key of this table.

Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+

Result table:
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+

*/

/*Solution*/

SELECT 
id,
SUM(CASE WHEN month='Jan' THEN revenue ELSE NULL end) Jan_Revenue,
SUM(CASE WHEN month='Feb' THEN revenue ELSE NULL end) Feb_Revenue,
SUM(CASE WHEN month='Mar' THEN revenue ELSE NULL end) Mar_Revenue,
SUM(CASE WHEN month='Apr' THEN revenue ELSE NULL end) Apr_Revenue,
SUM(CASE WHEN month='May' THEN revenue ELSE NULL end) May_Revenue,
SUM(CASE WHEN month='Jun' THEN revenue ELSE NULL end) Jun_Revenue,
SUM(CASE WHEN month='Jul' THEN revenue ELSE NULL end) Jul_Revenue,
SUM(CASE WHEN month='Aug' THEN revenue ELSE NULL end) Aug_Revenue,
SUM(CASE WHEN month='Sep' THEN revenue ELSE NULL end) Sep_Revenue,
SUM(CASE WHEN month='Oct' THEN revenue ELSE NULL end) Oct_Revenue,
SUM(CASE WHEN month='Nov' THEN revenue ELSE NULL end) Nov_Revenue,
SUM(CASE WHEN month='Dec' THEN revenue ELSE NULL end) Dec_Revenue
FROM department
GROUP BY id
