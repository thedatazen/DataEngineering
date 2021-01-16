/*Question:

Table: Tweets
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+

Find the IDs of the invalid tweets. 
Tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Tweets table:
+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |
+----------+----------------------------------+

+----------+
| tweet_id |
+----------+
| 2        |
+----------+

*/

/*Solution*/

SELECT tweet_id FROM
Tweets
WHERE CHAR_LENGTH(content)>15

