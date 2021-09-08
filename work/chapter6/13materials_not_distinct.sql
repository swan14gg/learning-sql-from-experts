SELECT
  center
FROM
  materials
GROUP BY
  center
HAVING
  COUNT(material) <> COUNT(DISTINCT material)
