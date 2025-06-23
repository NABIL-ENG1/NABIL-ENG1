USE Project;

---Insert sample data using INSERT INTO:

INSERT INTO Employee (SSN, FName, LName, Gender, BirthD, SubId, DNumb)
VALUES
('121212121', 'Ahmed', 'al-Balushi', 'M', '1999-01-01', NULL, NULL),
('232323232', 'Tariq', 'al-Battashi', 'M', '2000-02-15', NULL, NULL),
('343434343', 'almuhanned', 'al-Wahaibi', 'M', '1999-03-20', NULL, NULL),
('454545454', 'Aiman', 'al-Battashi', 'M', '2001-04-25', NULL, NULL),
('565656565', 'Nabil', 'al-balushi', 'M', '2000-05-30', NULL, NULL);


INSERT INTO Department (DNumb, DName, HIRDATE, SSN)
VALUES
(1, 'Human Resources', '2025-01-01', '121212121'),
(2, 'Finance', '2019-02-01', '232323232'),
(3, 'IT', '2022-03-01', '343434343'),
(4, 'Marketing', '2025-04-01', '454545454'),
(5, 'Electronics & telecom engineering', '2025-01-01', '565656565');

UPDATE Employee SET DNumb = 1 WHERE SSN = '121212121';
UPDATE Employee SET DNumb = 2 WHERE SSN = '232323232';
UPDATE Employee SET DNumb = 3 WHERE SSN = '343434343';
UPDATE Employee SET DNumb = 4 WHERE SSN = '454545454';
UPDATE Employee SET DNumb = 5 WHERE SSN = '565656565';

INSERT INTO Employee (SSN, FName, LName, Gender, BirthD, SubId, DNumb)
VALUES
('676767676', 'Fatma', 'Al-Mamari', 'F', '1999-06-15', '121212121', 1),
('787878787', 'Osama','al-Zakwani', 'M', '2000-07-20', '232323232', 2),
('898989898', 'Sarah', 'al-Zadjali', 'F', '1997-08-25', '343434343', 3),
('919191919', 'Aiman', 'al-Balushi', 'M', '2001-09-30', '454545454', 4),
('101010101', 'Hanan', 'al-Balushi', 'F', '1999-10-05', '565656565', 5);

INSERT INTO Locations (DNumb, LOCATIONS)
VALUES
(1, 'Muscat'),
(2, 'Sohar'),
(3, 'Izky'),
(4, 'Salalah'),
(5, 'Muscat');

INSERT INTO Project (PNum, Projectloc, City, PName, DNumb)
VALUES
(11, 'Building A', 'Muscat', 'HR Onboarding', 1),
(12, 'Floor 5', 'Qurm', 'Finance Audit', 2),
(13, 'Room 12', 'Seeb', 'IT Upgrade', 3),
(14, 'Office 3', 'Amerat', 'Marketing Campaign', 4),
(15, 'Building B', 'Muscat', 'telecom Expansion', 5);

INSERT INTO Depend (DEName, BirthDATE, GENDER, SSN)
VALUES
('Sundus', '2000-01-01', 'F', '121212121'),
('sultan', '2000-02-02', 'M', '232323232'),
('Muzna ', '2001-03-03', 'F', '343434343'),
('waleed', '2003-04-04', 'M', '454545454'),
('Mariya ', '1998-05-05', 'F', '565656565');

INSERT INTO WorkingHour (WH, PNum, SSN)
VALUES
('08:00:00', 11, '121212121'),
('07:30:00', 12, '232323232'),
('09:00:00', 13, '343434343'),
('06:45:00', 14, '454545454'),
('08:15:00', 15, '565656565'),

('08:00:00', 11, '676767676'),
('07:30:00', 12, '787878787'),
('09:00:00', 13, '898989898'),
('06:45:00', 14, '919191919'),
('08:15:00', 15, '101010101');


--- DML queries
---SELECT 

SELECT E.SSN, E.FName, E.LName, D.DName
FROM Employee E
JOIN Department D ON E.DNumb = D.DNumb
WHERE D.DName = 'IT';

--- UPDATE 

UPDATE Employee
SET LName = 'Al Balushi'
WHERE LName = 'al-Balushi';

--- DELETE

DELETE FROM Depend
WHERE DEName = 'Mariya';

