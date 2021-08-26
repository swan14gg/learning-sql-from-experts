SELECT
  name,
  COALESCE(name, 'this is null')
FROM
  nulltest;

SELECT
  name,
  NULLIF(name, 'a')
FROM
  nulltest;
