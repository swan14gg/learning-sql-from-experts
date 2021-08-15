CREATE TABLE student_club (
  std_id int,
  club_id int,
  club_name varchar(10),
  main_club_flg boolean,
  PRIMARY KEY (std_id, club_id)
);

INSERT INTO
  student_club
VALUES
  (100, 1, '野球', TRUE),
  (100, 2, '吹奏楽', FALSE),
  (200, 2, '吹奏楽', FALSE),
  (200, 3, 'バドミントン', TRUE),
  (200, 4, 'サッカー', FALSE),
  (300, 4, 'サッカー', FALSE),
  (400, 5, '水泳', FALSE),
  (500, 6, '囲碁', FALSE);
