/*Question:

Table point holds the x coordinate of some points on x-axis in a plane, which are all integers.

Write a query to find the shortest distance between two points in these points.

| x   |
|-----|
| -1  |
| 0   |
| 2   |

| shortest|
|---------|
| 1       |

*/

/*Solution*/
SELECT MIN(a.x - b.x) AS shortest
FROM point a, point b
WHERE a.x > b.x;

select min(abs(p2.x-p1.x)) as shortest from point p1
join point p2 on p1.x != p2.x

set @prev := -100000000; 
select min(diff) as shortest
from (select (x - @prev) as diff, @prev := x 
      from (select * from point order by x) t
     ) tt

SELECT MIN(ABS(P1.x - P2.x)) AS shortest FROM point AS P1
JOIN point AS P2 ON P1.x <> P2.x