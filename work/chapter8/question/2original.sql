CREATE VIEW children(child) AS
SELECT
  child_1
FROM
  personnel
UNION
SELECT
  child_2
FROM
  personnel
UNION
SELECT
  child_3
FROM
  personnel;

SELECT
  emp.employee,
  children.child
FROM
  personnel emp
  LEFT OUTER JOIN children ON children.child IN (emp.child_1, emp.child_2, emp.child_3);
