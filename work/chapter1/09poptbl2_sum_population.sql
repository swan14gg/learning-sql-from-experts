-- SELECTで分岐させることで集計処理が1つのSQLで済む
SELECT
  pref_name,
  SUM(
    CASE
      WHEN sex = '1' THEN population
      ELSE 0
    END
  ) AS cnt_m,
  SUM(
    CASE
      WHEN sex = '2' THEN population
      ELSE 0
    END
  ) AS cnt_f
FROM
  PopTbl2
GROUP BY
  pref_name;
