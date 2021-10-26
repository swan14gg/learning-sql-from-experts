SELECT
  COUNT(*) AS row_cnt,
FROM
  (
    SELECT
      *
    FROM
      tbl_a
    UNION
    SELECT
      *
    FROM
      tbl_b
  ) tmp;
