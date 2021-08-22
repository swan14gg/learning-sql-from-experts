SELECT
  server,
  sample_date,
  SUM(load_val) OVER (PARTITION BY server) AS sum_load
FROM
  serverloadsample
