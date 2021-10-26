SELECT
  COALESCE(A.id, B.id),
  CASE WHEN B.name IS NULL THEN A.name ELSE B.name END AS name
FROM
  class_a A FULL
  OUTER JOIN class_b B ON A.id = B.id;
