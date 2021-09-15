CREATE TABLE reservations (
  reserver VARCHAR(5),
  start_date DATE,
  end_date DATE
);

INSERT INTO
  reservations
VALUES
  ('木村', '2018-10-26', '2018-10-27'),
  ('荒木', '2018-10-28', '2018-10-31'),
  ('堀', '2018-10-31', '2018-11-01'),
  ('山本', '2018-11-03', '2018-11-04'),
  ('内田', '2018-11-03', '2018-11-05'),
  ('水谷', '2018-11-06', '2018-11-06');
