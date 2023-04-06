USE employeeTracker_db;

SELECT * FROM DEPARTMENT;

SELECT * FROM ROLES;

SELECT * FROM employee;

select d.id,d.name, r.title,r.salary from department d right join roles r
on d.id = r.department_id order by d.name;


select r.id,r.title,r.salary,e.id,e.firstName,e.lastName from roles r left join employee e on e.role_id = r.id;


select e.id,e.firstName,e.lastName, r.id,r.title,r.salary,d.id,d.name from employee e left join roles r on e.role_id = r.id left join department d on r.department_id = d.id;
