SELECT
  team_id
FROM
  teams
GROUP BY
  team_id
HAVING
  COUNT(*) = SUM(CASE WHEN status = '待機' THEN 1 ELSE 0 END)
