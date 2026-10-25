-- Write your code here
SELECT *
FROM movies
ORDER BY
  case when genre = 'Action' and box_office >= 50000000 then 0
    else 1
    end,
  rating DESC;