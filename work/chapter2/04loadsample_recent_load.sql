SELECT
  sample_date AS cur_date,
  load_val AS cur_load,
  MIN(sample_date) over (
    ORDER BY
      sample_date ASC ROWS BETWEEN 1 preceding
      AND 1 preceding
  ) AS latest_date,
  MIN(load_val) over (
    ORDER BY
      sample_date ASC ROWS BETWEEN 1 preceding
      AND 1 preceding
  ) AS latest_load
FROM
  loadsample;
