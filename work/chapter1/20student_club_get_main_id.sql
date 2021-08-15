SELECT
  std_id,
  CASE
    WHEN count(*) = 1 THEN MAX(club_id)
    ELSE MAX(
      CASE
        WHEN main_club_flg = TRUE THEN club_id
        ELSE NULL
      END
    )
  END AS main_club
FROM
  student_club
GROUP BY
  std_id;
