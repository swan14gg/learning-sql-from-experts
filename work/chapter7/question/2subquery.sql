SELECT
  a1.prc_date,
  a1.prc_amt,
  (
    SELECT
      (
        CASE WHEN COUNT(tmp.prc_amt) = 3 THEN AVG(tmp.prc_amt) ELSE NULL END
      )
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
