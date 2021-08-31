SELECT
  DISTINCT at1.key
FROM
  arraytbl2 at1
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      arraytbl2 at2
    WHERE
      at1.key = at2.key
      AND (
        at2.val <> 1
        OR at2.val IS NULL
      )
  )
