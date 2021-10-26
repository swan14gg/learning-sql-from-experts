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
  );
