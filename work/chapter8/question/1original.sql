SELECT
  MASTER.age_class AS age_class,
  master.sex_cd AS sex_cd,
  DATA.pop_tohoku AS pop_tohoku,
  DATA.pop_kanto AS pop_kanto
FROM
  (
    SELECT
      age_class,
      sex_cd
    FROM
      tblage
      CROSS JOIN tblsex
  ) master
  LEFT OUTER JOIN(
    SELECT
      age_class,
      sex_cd,
      SUM(
        CASE WHEN pref_name IN ('青森', '秋田') THEN population ELSE NULL END
      ) AS pop_tohoku,
      SUM(
        CASE WHEN pref_name IN ('東京', '千葉') THEN population ELSE NULL END
      ) AS pop_kanto
    FROM
      tblpop
    GROUP BY
      age_class,
      sex_cd
  ) DATA ON master.age_class = DATA.age_class
  AND master.sex_cd = DATA.sex_cd
ORDER BY
  age_class,
  sex_cd desc
