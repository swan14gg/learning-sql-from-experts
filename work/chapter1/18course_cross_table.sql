SELECT
  cm.course_name,
  CASE
    WHEN EXISTS(
      SELECT
        oc.course_id
      FROM
        open_courses AS oc
      WHERE
        MONTH = '201806'
        AND oc.course_id = cm.course_id
    ) THEN '◯'
    ELSE '×'
  END AS "6月",
  CASE
    WHEN EXISTS(
      SELECT
        oc.course_id
      FROM
        open_courses AS oc
      WHERE
        MONTH = '201807'
        AND oc.course_id = cm.course_id
    ) THEN '◯'
    ELSE '×'
  END AS "7月",
  CASE
    WHEN EXISTS(
      SELECT
        oc.course_id
      FROM
        open_courses AS oc
      WHERE
        MONTH = '201808'
        AND oc.course_id = cm.course_id
    ) THEN '◯'
    ELSE '×'
  END AS "8月"
FROM
  course_master AS cm
