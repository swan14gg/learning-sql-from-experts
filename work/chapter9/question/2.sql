SELECT
  DISTINCT emp
FROM
  empskills es1
WHERE
  NOT EXISTS (
    SELECT
      skill
    FROM
      skills
    EXCEPT
    SELECT
      skill
    FROM
      empskills es2
    WHERE
      es1.emp = es2.emp
  )
  AND NOT EXISTS (
    SELECT
      skill
    FROM
      empskills es3
    WHERE
      es1.emp = es3.emp
    EXCEPT
    SELECT
      skill
    FROM
      skills
  );
