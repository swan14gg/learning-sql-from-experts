SELECT
  p1.name AS name_1,
  p2.name AS name_2
FROM
  products p1
  CROSS JOIN products p2;
