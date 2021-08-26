SELECT
  name,
  'asc' AS sort
FROM
  nulltest
ORDER BY
  name;

SELECT
  name,
  'desc' AS sort
FROM
  nulltest
ORDER BY
  name desc;
