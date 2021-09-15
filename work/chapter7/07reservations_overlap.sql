SELECT
  reserver,
  start_date,
  end_date,
  MAX(start_date) OVER (
    ORDER BY
      start_date ROWS BETWEEN 1 following
      AND 1 following
  ) AS next_start_date,
  MAX(reserver) OVER (
    ORDER BY
      start_date ROWS BETWEEN 1 following
      AND 1 following
  ) AS next_reserver
FROM
  reservations;

SELECT
  reserver,
  next_reserver
FROM
  (
    SELECT
      reserver,
      start_date,
      end_date,
      MAX(start_date) OVER (
        ORDER BY
          start_date ROWS BETWEEN 1 following
          AND 1 following
      ) AS next_start_date,
      MAX(reserver) OVER (
        ORDER BY
          start_date ROWS BETWEEN 1 following
          AND 1 following
      ) AS next_reserver
    FROM
      reservations
  ) tmp
WHERE
  next_start_date BETWEEN start_date
  AND end_date;
