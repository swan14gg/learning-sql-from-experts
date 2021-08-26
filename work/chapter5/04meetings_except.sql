SELECT
  DISTINCT m1.meeting,
  m2.person
FROM
  meetings m1
  CROSS JOIN meetings m2
EXCEPT
SELECT
  meeting,
  person
FROM
  meetings
