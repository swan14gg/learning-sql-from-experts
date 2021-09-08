SELECT
  team_id,
  MEMBER
FROM
  teams t1
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      teams t2
    WHERE
      t1.team_id = t2.team_id
      AND t2.status <> '待機'
  )
