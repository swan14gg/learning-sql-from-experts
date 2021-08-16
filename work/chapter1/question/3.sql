SELECT
  KEY
FROM
  greatests
ORDER BY
  KEY = 'B' DESC,
  KEY = 'A' DESC,
  KEY = 'C' DESC,
  KEY = 'D' DESC;

-- 別解
SELECT
  KEY
FROM
  greatests
ORDER BY
  CASE
    WHEN KEY = 'B' THEN 1
    WHEN KEY = 'A' THEN 2
    WHEN KEY = 'C' THEN 3
    WHEN KEY = 'D' THEN 4
    ELSE NULL
  END;
