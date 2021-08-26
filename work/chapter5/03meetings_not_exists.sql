SELECT
  DISTINCT m1.meeting,
  m2.person
FROM
  meetings m1
  CROSS JOIN meetings m2
WHERE
  NOT EXISTS (
    SELECT
      *
    FROM
      meetings m3
    WHERE
      m1.meeting = m3.meeting
      AND m2.person = m3.person
  )
