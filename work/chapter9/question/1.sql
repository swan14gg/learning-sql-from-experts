SELECT
  CASE WHEN COUNT(*) = (
    SELECT
      COUNT(*)
    FROM
      tbl_a
  )
  AND COUNT(*) = (
    SELECT
      COUNT(*)
    FROM
      tbl_b
  ) THEN '等しい' ELSE '異なる' END AS 結果
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
