SELECT
  sample_date AS cur_date,
  load_val AS cur_load,
  MIN(sample_date) OVER W AS latest_date,
  MIN(load_val) OVER W AS latest_load
FROM
  loadsample
WINDOW
  W AS (
    ORDER BY
      sample_date ASC RANGE BETWEEN INTERVAL '1' DAY FOLLOWING
      AND INTERVAL '1' DAY FOLLOWING
  );
