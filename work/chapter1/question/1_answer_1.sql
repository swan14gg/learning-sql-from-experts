SELECT
  KEY,
  CASE
    WHEN x > y THEN x
    ELSE y
  END AS greatests
FROM
  greatests;
