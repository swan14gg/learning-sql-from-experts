SELECT
  s1.seq
FROM
  SEQUENCE AS s1
WHERE
  s1.seq BETWEEN 1
  AND 12
  AND NOT EXISTS (
    SELECT
      *
    FROM
      seqtbl AS s2
    WHERE
      s1.seq = s2.seq
  );
