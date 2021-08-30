SELECT
  *
FROM
  projects p1
WHERE
  NOT EXISTS (
    SELECT
      status
    FROM
      projects p2
    WHERE
      p1.project_id = p2.project_id
      AND p2.status <> CASE WHEN p2.step_nbr <= 1 THEN '完了' ELSE '待機' END
  )
