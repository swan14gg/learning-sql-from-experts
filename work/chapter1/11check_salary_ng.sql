CREATE TABLE employee (
  name varchar(20),
  sex char(1),
  salary int,
  CONSTRAINT check_salary CHECK (
    sex = '2'
    AND salary <= 200000
  )
)
