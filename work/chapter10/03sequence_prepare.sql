CREATE VIEW SEQUENCE (seq) AS
SELECT
  d1.digit + (d2.digit * 10) + (d3.digit * 100)
FROM
  digits d1
  CROSS JOIN digits d2
  CROSS JOIN digits d3;
