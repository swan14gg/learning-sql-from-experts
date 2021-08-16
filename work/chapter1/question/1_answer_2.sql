SELECT
  KEY,
  CASE
    WHEN x >= y
    AND x >= z THEN x
    WHEN y >= x
    AND y >= z THEN y
    WHEN z >= x
    AND z >= y THEN z
  END AS greatests
FROM
  greatests;
