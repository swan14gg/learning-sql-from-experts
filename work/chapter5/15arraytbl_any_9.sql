SELECT
  *
FROM
  arraytbl
WHERE
  9 = ANY(
    ARRAY [
      col1,
      col2,
      col3,
      col4,
      col5,
      col6,
      col7,
      col8,
      col9,
      col10
    ]
  );
