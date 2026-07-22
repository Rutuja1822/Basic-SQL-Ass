-- ⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐
-- COMPLETE FRIENDS DATABASE - ALL BASIC SQL QUERIES
-- BY: RUTUJA😉
-- Date: 2026-07-22
--Assignment given by: Pratick Sir
--⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐




--                                LET'S DO IT😉😁👍





-- ❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️
--                      CREATE DATABASE AND TABLE
-- ❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️

-- Create the "DATABASE"
CREATE DATABASE Friends;

-- "Use" the database
USE Friends;

-- Create the "Friends_List table"
CREATE TABLE Friends_List (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    City VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(100) UNIQUE,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- ❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️
--                                INSERT DATA 
-- ❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️


INSERT INTO Friends_List (Name, Age, City, Phone, Email)
VALUES 
('Unnati Kolekar', 22, 'Narayngao', '7719806571', 'unnatikolekar@gmail.com'),
('Tanuja Kokate', 22, 'Nashik', '7710806572', 'tanujakokate@gmail.com'),
('Rutuja Lokhande', 22, 'Loni', '8719806571', 'lokhanderutuja@gmail.com'),
('Nikhil Patil', 23, 'Mumbai', '9823456789', 'Nikhil.patil@gmail.com'),
('Yash Dhonde', 24, 'Pune', '9876543210', 'yash16@gmail.com'),
('Virti Shah', 25, 'Delhi', '9988776655', 'shiya@gmail.com'),
('Sagar Jadhav', 21, 'Nashik', '9876543211', 'sagarjadhav@gmail.com');



-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️
--                    SELECT QUERIES TO VIEW DATA
-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️

-- View all data
SELECT * FROM Friends_List;

-- View only specific columns
SELECT Name, Age, City FROM Friends_List;

-- View friends from a specific city
SELECT * FROM Friends_List WHERE City = 'Nashik';

-- View friends older than 22
SELECT * FROM Friends_List WHERE Age > 22;

-- View friends younger than 24
SELECT * FROM Friends_List WHERE Age < 24;

-- View friends with a specific name
SELECT * FROM Friends_List WHERE Name = 'Unnati Kolekar';

-- View friends whose name starts with 'P'
SELECT * FROM Friends_List WHERE Name LIKE 'N%';

-- View friends whose name ends with 'a'
SELECT * FROM Friends_List WHERE Name LIKE '%a';

-- View friends with Gmail accounts
SELECT Name, Email FROM Friends_List WHERE Email LIKE '%gmail.com';

-- View friends from specific cities (using IN)
SELECT * FROM Friends_List WHERE City IN ('Pune', 'Mumbai', 'Nashik');

-- View friends not from a specific city
SELECT * FROM Friends_List WHERE City != 'Nashik';

-- 3.12: View friends with age between 22 and 24
SELECT * FROM Friends_List WHERE Age BETWEEN 22 AND 24;



-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️
--                   UPDATE QUERIES 
-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️


--  Update Tanuja's city from Nashik to Pune
SET SQL_SAFE_UPDATES = 0;
UPDATE Friends_List SET Age = 25 WHERE City = 'Nashik';
SET SQL_SAFE_UPDATES = 1;

-- Update Unnati's age
SET SQL_SAFE_UPDATES = 0;
UPDATE Friends_List SET Age = 23 WHERE Name = 'Unnati Kolekar';
SET SQL_SAFE_UPDATES = 1;

-- Update multiple columns at once
SET SQL_SAFE_UPDATES = 0;

-- Update multiple columns at once
UPDATE Friends_List 
SET City = 'Mumbai', Age = 24 
WHERE Name = 'Rutuja Lokhande';

-- Update all friends from a specific city
UPDATE Friends_List 
SET Age = 25 
WHERE City = 'Mumbai';

-- Update all friends from Nashik to add state
UPDATE Friends_List 
SET City = 'Nashik, Maharashtra' 
WHERE City = 'Nashik';

--  Update age for multiple friends
UPDATE Friends_List 
SET Age = Age + 1 
WHERE City = 'Pune';

-- Update email domain for all friends
UPDATE Friends_List 
SET Email = REPLACE(Email, 'gmail.com', 'yahoo.com') 
WHERE City = 'Mumbai';



-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️
--                              DELETE QUERIES 
-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️


-- Delete a specific friend by name
DELETE FROM Friends_List WHERE Name = 'Yash Dhonde';

-- Delete by ID 
DELETE FROM Friends_List WHERE ID = 2;

-- Delete friends from a specific city
DELETE FROM Friends_List WHERE City = 'Delhi';

-- Delete friends younger than 23
DELETE FROM Friends_List WHERE Age < 23;


-- Delete all friends from Mumbai (if any remain)
DELETE FROM Friends_List WHERE City = 'Mumbai';



-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️
--                                     ALTER TABLE 
-- ️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️


-- Add a new column
ALTER TABLE Friends_List 
ADD COLUMN Hobby VARCHAR(100);

-- Add multiple columns
ALTER TABLE Friends_List 
ADD COLUMN Relationship VARCHAR(50),
ADD COLUMN Birthday DATE;

UPDATE Friends_List 
SET Hobby = 'Traking', Relationship = 'Best Friend', Birthday = '2004-06-18'
WHERE Name = 'Unnati Kolekar';

UPDATE Friends_List 
SET Hobby = 'Coding', Relationship = 'Close Friend', Birthday = '2006-09-29'
WHERE Name = 'Tanuja Kokate';

UPDATE Friends_List 
SET Hobby = 'Dancing', Relationship = 'Class Friend', Birthday = '2001-03-10'
WHERE Name = 'Nikhil Patil';

-- ️⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐
--                                          THANKYOU
-- ️⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐⭐


