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

-- 別解
-- 1. 入れ子にする
-- 2. 行列変換してMAX関数使用
