SELECT
  CASE
    WHEN sex = 1 THEN '男'
    WHEN sex = 2 THEN '女'
  END AS "性別",
  SUM(population) AS "全国",
  sum(
    CASE
      WHEN pref_name = '徳島' THEN population
      ELSE 0
    END
  ) AS "徳島",
  sum(
    CASE
      WHEN pref_name = '高知' THEN population
      ELSE 0
    END
  ) AS "高知",
  sum(
    CASE
      WHEN pref_name = '香川' THEN population
      ELSE 0
    END
  ) AS "香川",
  sum(
    CASE
      WHEN pref_name = '愛媛' THEN population
      ELSE 0
    END
  ) AS "愛媛",
  sum(
    CASE
      WHEN pref_name IN ('徳島', '高知', '香川', '愛媛') THEN population
      ELSE 0
    END
  ) AS "四国"
FROM
  poptbl2
GROUP BY
  sex;
