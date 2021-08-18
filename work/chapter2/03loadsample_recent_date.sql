SELECT
  sample_date AS cur_date,
  MIN(sample_date) over (
    ORDER BY
      sample_date ASC ROWS BETWEEN 1 preceding
      AND 1 preceding
  ) AS latest_date
FROM
  loadsample;
