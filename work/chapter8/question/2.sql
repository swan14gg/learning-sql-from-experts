SELECT
  emp.employee,
  COUNT(children.child) AS child_count
FROM
  personnel emp
  LEFT OUTER JOIN children ON children.child IN (emp.child_1, emp.child_2, emp.child_3)
GROUP BY
  emp.employee;
