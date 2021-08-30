SELECT
  DISTINCT project_id
FROM
  projects
GROUP BY
  project_id
HAVING
  MAX(
    CASE WHEN status = '完了' THEN step_nbr ELSE 0 END
  ) = 1
