SELECT
  seat,
  '〜',
  seat + 2
FROM
  (
    SELECT
      seat,
      MAX(seat) OVER (
        ORDER BY
          seat ROWS BETWEEN 2 following
          AND 2 following
      ) AS end_seat
    FROM
      seats
    WHERE
      status = '空'
  ) tmp
WHERE
  end_seat - seat = 2
