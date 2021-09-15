SELECT
  a1.prc_date,
  a1.prc_amt,
  (
    SELECT
      AVG(tmp.prc_amt)
    FROM
      (
        SELECT
          t.prc_amt
        FROM
          accounts t
        WHERE
          t.prc_date <= a1.prc_date
        ORDER BY
          t.prc_date desc
        LIMIT
          3
      ) tmp
  )
FROM
  accounts a1;
