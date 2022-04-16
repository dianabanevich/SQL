--������� ������� employees--

create table employees(
id serial  primary key,
employee_name Varchar(50) not null
);

-- ��������� ������� employee 70 �������� --

insert into employees (employee_name)
values ('���'),
('������'),
('���'),
('������'),
('�������'),
('�����'),
('�����'),
('���������'),
('����������'),
('������'),
('����'),
('�������'),
('����'),
('��������'),
('���������'),
('��������'),
('������'),
('����'),
('�����'),
('������'),
('�����'),
('�������'),
('������'),
('������'),
('�����'),
('�����'),
('������'),
('����'),
('�����'),
('���������'),
('�������'),
('����'),
('���'),
('������'),
('�������'),
('������'),
('�������'),
('�������'),
('�����'),
('��������'),
('��������'),
('����������'),
('������'),
('�����'),
('����'),
('������'),
('����'),
('��������'),
('���������'),
('������'),
('����'),
('������'),
('�������'),
('���������'),
('����'),
('�����'),
('�����'),
('���������'),
('����'),
('ϸ��'),
('����'),
('������'),
('����'),
('������'),
('�����'),
('���'),
('�����'),
('������'),
('������'),
('�����');

select * from employees;

-- ������� ������� salary --

create table salary(
id serial  primary key,
monthly_salary Int not null
);

--��������� ������� salary 15 ��������--

insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

select * from salary;

--������� ������� employee_salary--

create table employee_salary (
id serial primary key,
employee_id Int not null unique,
salary_id Int not null
)

--��������� ������� employee_salary 40 ��������:--
-- � 10 ����� �� 40 �������� �������������� employee_id--


insert into employee_salary (employee_id, salary_id)
values (1, 1),
		(2, 2),
		(3, 3),
	 	(4, 4),
	 	(5, 5),
	 	(6, 6),
	 	(7, 7),
	 	(8, 8),
	 	(9, 9),
	 	(10, 10),
	 	(11, 11),
	 	(12, 12),
	 	(13, 13),
	 	(14, 14),
	 	(15, 15),
	 	(16, 16),
	 	(17, 17),
	 	(18, 18),
	 	(19, 19),
	 	(20, 20),
	 	(21, 21),
	 	(22, 22),
	 	(23, 23),
	 	(24, 24),
	 	(25, 25),
	 	(26, 26),
	 	(27, 27),
	 	(28, 28),
	 	(29, 29),
	 	(30, 30),
	 	(71, 71),
	 	(72, 72),
	 	(73, 73),
	 	(74, 74),
	 	(75, 75),
	 	(76, 76),
	 	(77, 77),
	 	(78, 78),
	 	(79, 79),
	 	(80, 80);
	 	
select * from employee_salary;

--������� ������� roles--

create table roles (
id Serial  primary key,
role_name int not null unique);

--�������� ��� ������ role_name � int �� varchar(30)--

alter table roles
alter column role_name type varchar (30) using 
role_name :: varchar (30);

--��������� ������� roles 20 ��������--

insert into roles (role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

select * from roles;
	
--������� ������� roles_employee--

create table roles_employee (
id Serial  primary key,
employee_id Int not null unique, 
role_id Int not null, 
foreign key (employee_id)
	references employees (id),
foreign key (role_id)
	references roles (id));
	
select * from roles_employee;

--��������� ������� roles_employee 40 ��������--

insert into roles_employee(id, employee_id, role_id)
values 
  (default, 7, 2),
  (default, 20, 4),
  (default, 3, 9),
  (default, 5, 13),
  (default, 23, 4),
  (default, 11, 2),
  (default, 10, 9),
  (default, 22, 13),
  (default, 21, 3),
  (default, 34, 4),
  (default, 6, 7),
  (default, 1, 5),
  (default, 2, 6),
  (default, 9, 11),
  (default, 12, 5),
  (default, 15, 7),
  (default, 16, 14),
  (default, 29, 17),
  (default, 35, 16),
  (default, 36, 19),
  (default, 42, 4),
  (default, 46, 3),
  (default, 47, 5),
  (default, 50, 2),
  (default, 53, 6),
  (default, 62, 8),
  (default, 64, 10),
  (default, 67, 13),
  (default, 68, 14),
  (default, 69, 11),
  (default, 33, 16),
  (default, 39, 4),
  (default, 28, 3),
  (default, 25, 6),
  (default, 17, 1),
  (default, 54, 9),
  (default, 45, 13),
  (default, 44, 5),
  (default, 8, 6),
  (default, 32, 16);




		



