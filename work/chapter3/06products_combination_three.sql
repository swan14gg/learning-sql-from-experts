SELECT
  p1.name AS name_1,
  p2.name AS name_2,
  p3.name AS name_3
FROM
  products AS p1
  INNER JOIN products AS p2 ON p1.name > p2.name
  INNER JOIN products AS p3 ON p2.name > p3.name;
