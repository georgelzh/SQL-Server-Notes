
INSERT INTO Names
VALUES ('Joe Smith')

--insert a row would have to match column for column and would look like this
--Employee has 4 columns name, address, ID, Salary
INSERT INTO Employee
VALUES ('Joe Smith', '123 4th St.', 101, 2500)

--you may insert a row with less than all the columns by naming the columns you want to insert into
INSERT INTO Employee (name, address)
VALUES ('Joe Smith', '123 4th St.')

--you may insert null
INSERT INTO Employee (name, address, employee_number, salary)
VALUES ('Joe Smith', null, 101, null)


--the inserted value has to be in order of the column, the following query is wrong.
INSERT INTO Employee
VALUES (2500, 'Joe Smith',  101, '123 4th St.')

--It could be corrected by specifying the column names, as shown here:
INSERT INTO Employee (salary, name, employee_number, address)
VALUES (2500, 'Joe Smith',  101, '123 4th St.')


INSERT INTO Employee (name, address, employee_number, salary)
VALUES ('Joe Smith', '123 4th St.', 101, 2500)

INSERT INTO Employee (name, address, employee_number, salary)
VALUES ('Pradeep Saha', '27 Shillingford', 103, 3300)

INSERT INTO Employee (name, address, employee_number, salary)
VALUES ('Sumit Kumar', '95 Oxford Rd', 105, 1200)

INSERT INTO Employee (name, address, employee_number, salary)
VALUES ('Joya Das', '23 Pesterfield Cr', 114, 2290)

INSERT INTO Employee (name, address, employee_number, salary)
VALUES ('Terry Livingstone', '465', 95, 3309)