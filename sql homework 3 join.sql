--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������--

select employee_name, monthly_salary from employees inner join employee_salary
		on employees.id = employee_salary.employee_id
		inner join salary on salary.id = employee_salary.salary_id;
		 
 --2. ������� ���� ���������� � ������� �� ������ 2000.--
	
select employee_name, monthly_salary from employees inner join employee_salary
		on employees.id = employee_salary.employee_id
		inner join salary on salary.id = employee_salary.salary_id
		where monthly_salary < '2000'  ;

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)--

select employee_name, monthly_salary from employees inner join employee_salary
		on employees.id = employee_salary.employee_id
		right outer join salary on salary.id = employee_salary.salary_id
		where employee_name is null;
		
 -- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)--
 
select employee_name, monthly_salary from employees inner join employee_salary
		on employees.id = employee_salary.employee_id
		right outer join salary on salary.id = employee_salary.salary_id
		where employee_name is null and monthly_salary < 2000;
	
 --5. ����� ���� ���������� ���� �� ��������� ��.--
	
select employee_name, monthly_salary from employees inner join employee_salary
		on employees.id = employee_salary.employee_id
		inner join salary on salary.id = employee_salary.salary_id
		where monthly_salary is null;
	
 --6. ������� ���� ���������� � ���������� �� ���������.--
	
select employee_name, role_name from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id;

--7. ������� ����� � ��������� ������ Java �������������.--
	
select employee_name, role_name from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		where role_name like '%Java%';

 --8. ������� ����� � ��������� ������ Python �������������.--
 
select employee_name, role_name from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		where role_name like '%Python%';
 
 --9. ������� ����� � ��������� ���� QA ���������.--
 
select employee_name, role_name from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		where role_name like '%QA engineer%';
 
 --10. ������� ����� � ��������� ������ QA ���������.--
	
select employee_name, role_name from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		where role_name like '%Manual QA engineer%';
	
 --11. ������� ����� � ��������� ��������������� QA--
	
select employee_name, role_name from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		where role_name like '%Automation QA engineer%';
	
 --12. ������� ����� � �������� Junior ������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Junior%';

 --13. ������� ����� � �������� Middle ������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id  
		where role_name like '%Middle%';
	
 --14. ������� ����� � �������� Senior ������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Senior%';
	
 --15. ������� �������� Java �������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Java%';
	
 --16. ������� �������� Python �������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Python%';
	
 --17. ������� ����� � �������� Junior Python �������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Junior Python%';	
	
-- 18. ������� ����� � �������� Middle JS �������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Middle JavaScript%';	
	
 --19. ������� ����� � �������� Senior Java �������������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Senior JavaScript%';		
	
-- 20. ������� �������� Junior QA ���������--
	
select role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%Junior%QA%';
	
 --21. ������� ������� �������� ���� Junior ������������--
	
select avg (monthly_salary) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%Junior%';
	
 --22. ������� ����� ������� JS �������������--
	
select sum(monthly_salary) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id 
		where role_name like '%Java developer%';
	
 --23. ������� ����������� �� QA ���������--
	
select min(monthly_salary) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%QA engineer%';	
	
-- 24. ������� ������������ �� QA ���������--
 
 select max(monthly_salary) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%QA engineer%';
	
 --25. ������� ���������� QA ���������--
	
select count(distinct role_name) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%QA engineer%';
	
 --26. ������� ���������� Middle ������������.--
	
select count(distinct role_name) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%Middle%';
	
 --27. ������� ���������� �������������--
	
select count(distinct role_name) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%developer%';
	
 --28. ������� ���� (�����) �������� �������������.--
	
 select sum(monthly_salary) from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where role_name like '%developer%';
	
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		order by employee_name;
	
 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where monthly_salary between 1700 and 2300
		order by employee_name;
	
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300--
	
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where monthly_salary < 2300
		order by employee_name;	
	
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000--
 
select employee_name, role_name, monthly_salary from employees inner join roles_employee 
		on employees.id = roles_employee.employee_id
		inner join roles on roles.id = roles_employee.role_id
		inner join employee_salary on employee_salary.salary_id = roles_employee.employee_id 
		inner join salary on salary.id = employee_salary.salary_id
		where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
		order by employee_name;
 