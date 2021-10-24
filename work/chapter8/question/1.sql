SELECT
  MASTER.age_class AS age_class,
  master.sex_cd AS sex_cd,
  SUM(
    CASE WHEN DATA.pref_name IN ('青森', '秋田') THEN DATA.population ELSE NULL END
  ),
  SUM(
    CASE WHEN DATA.pref_name IN ('東京', '千葉') THEN DATA.population ELSE NULL END
  )
FROM
  (
    SELECT
      age_class,
      sex_cd
    FROM
      tblage
      CROSS JOIN tblsex
  ) master
  LEFT OUTER JOIN tblpop DATA ON master.age_class = DATA.age_class
  AND master.sex_cd = DATA.sex_cd
GROUP BY
  master.age_class,
  master.sex_cd
ORDER BY
  age_class,
  sex_cd desc
