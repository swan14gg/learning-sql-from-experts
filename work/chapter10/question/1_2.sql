SELECT
  s1.seq
FROM
  SEQUENCE AS s1
  LEFT OUTER JOIN seqtbl AS s2 ON s1.seq = s2.seq
WHERE
  s1.seq BETWEEN 1
  AND 12
  AND s2.seq IS NULL;
