SELECT
  CASE
    WHEN population < 100 THEN '01'
    WHEN population >= 100
    AND population < 200 THEN '02'
    WHEN population >= 200
    AND population < 300 THEN '03'
    WHEN population >= 300 THEN '04'
    ELSE NULL
  END AS pop_class,
  count(*) AS cnt
FROM
  PopTbl
GROUP BY
  -- SELECT句でつけた別名をGROUP BY句で参照している
  pop_class
ORDER BY
  pop_class;
