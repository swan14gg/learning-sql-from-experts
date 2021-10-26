CREATE TABLE personnel (
  employee VARCHAR(2),
  child_1 VARCHAR(2),
  child_2 VARCHAR(2),
  child_3 VARCHAR(2)
);

INSERT INTO
  personnel
VALUES
  ('赤井', '一郎', '二郎', '三郎'),
  ('工藤', '春子', '夏子', NULL),
  ('鈴木', '夏子', NULL, NULL),
  ('吉田', NULL, NULL, NULL);
