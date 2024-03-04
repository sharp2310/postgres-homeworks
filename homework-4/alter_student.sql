-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar
CREATE TABLE student
(
	student_id serial,
	first_name varchar,
	last_name varchar,
	birthday date,
	phone varchar
)

-- 2. Добавить в таблицу student колонку middle_name varchar
ALTER TABLE student
ADD COLUMN middle_name varchar;

-- 3. Удалить колонку middle_name
ALTER TABLE student
DROP COLUMN middle_name;

-- 4. Переименовать колонку birthday в birth_date
ALTER TABLE student
RENAME COLUMN birthday TO birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)
ALTER TABLE student
ALTER COLUMN phone SET DATA TYPE varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
ALTER TABLE student
ADD PRIMARY KEY(student_id);

INSERT INTO student(first_name, last_name, birth_date, phone)
VALUES('BOGDAN', 'BOY', '30-10-1992', '123');
INSERT INTO student(first_name, last_name, birth_date, phone)
VALUES('Kurt', 'Kobein', '20-02-1967', '999');
INSERT INTO student(first_name, last_name, birth_date, phone)
VALUES('Yoda', 'Master', '30-09-3989', '000');

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE student RESTART IDENTITY