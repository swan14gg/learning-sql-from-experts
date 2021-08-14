CREATE TABLE employee (
  name varchar(20),
  sex char(1),
  salary int,
  CONSTRAINT check_salary CHECK (
    CASE
      WHEN sex = '2' THEN CASE
        WHEN salary <= 200000 THEN 1
        ELSE 0
      END
      ELSE 1
    END = 1
  )
)
