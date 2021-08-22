SELECT
  p1.name AS name_1,
  p2.name AS name_2
FROM
  products AS p1
  INNER JOIN products AS p2 ON p1.name <> p2.name;
