 /**** DRILL 1 ****/
SELECT * FROM tbl_habitat;

 /**** DRILL 2 ****/
SELECT species_name FROM tbl_species WHERE species_order = '3';

 /**** DRILL 3 ****/
SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600; 

 /**** DRILL 4 ****/
SELECT tbl_species.species_name, tbl_nutrition.nutrition_id FROM tbl_species INNER JOIN tbl_nutrition
 ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id WHERE tbl_nutrition.nutrition_id BETWEEN 2202 AND 2206;

 /**** DRILL 5 ****/
SELECT species_name AS 'Species Name:' FROM tbl_species;

SELECT nutrition_type AS 'Nutrition Type:' FROM tbl_nutrition;

 /**** DRILL 6 ****/
SELECT S.specialist_fname, S.specialist_lname, S.specialist_contact 
FROM tbl_species AS SP
INNER JOIN tbl_care AS C ON SP.species_care = C.care_id
INNER JOIN tbl_specialist AS S ON C.care_specialist = S.specialist_id
WHERE species_name = 'penguin'
;

 /**** DRILL 7 ****/
 USE db_drill_7


CREATE TABLE tbl_persons (
persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
persons_FNAME VARCHAR (50) NOT NULL,
persons_LNAME VARCHAR (50) NOT NULL,
persons_AGE INT
)
;

INSERT INTO tbl_persons
(persons_FNAME, persons_LNAME, persons_AGE)
VALUES
('Maggie', 'Smith', 65);

INSERT INTO tbl_persons
(persons_FNAME, persons_LNAME, persons_AGE)
VALUES
('Celine', 'Dion', 49);

INSERT INTO tbl_persons
(persons_FNAME, persons_LNAME, persons_AGE)
VALUES
('Eric', 'James', 56);

INSERT INTO tbl_persons
(persons_FNAME, persons_LNAME, persons_AGE)
VALUES
('Phil', 'Olsen', 24);

INSERT INTO tbl_persons
(persons_FNAME, persons_LNAME, persons_AGE)
VALUES
('Bonnie', 'Webberly', 37);

SELECT * FROM tbl_persons

INSERT INTO tbl_persons
(persons_FNAME, persons_LNAME, persons_AGE)
VALUES
('Jacqueline', 'Jones', 72),
('Jeanine', 'Apple', 78),
('Maurice', 'Christian', 52);


CREATE TABLE tbl_contact (
contact_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
contact_Address VARCHAR (50) NOT NULL,
contact_City VARCHAR (50) NOT NULL,
contact_State VARCHAR (50) NOT NULL, 
contact_Phone VARCHAR (50) NOT NULL
);

SELECT * FROM tbl_contact;

INSERT INTO tbl_contact
(contact_Address, contact_City, contact_State, contact_Phone)
VALUES
('1581 Main St', 'Vancouver', 'WA', '206-234-0976'),
('7566 Alain St', 'Seattle', 'WA', '206-432-1598'),
('16925 18th ST', 'Littleton', 'CO', '602-340-2248'),
('2468 Speedway AVE', 'Tempe', 'AZ', '621-534-3776'),
('4554 NW 91st AVE', 'Vancouver', 'WA', '206-894-7548'),
('120 Hanover Blvd', 'Muriel', 'ID', '760-123-6966'),
('35825 Broadway AVE', 'Marion', 'IN', '358-654-2587'),
('12715 Evergreen ST', 'Billings', 'MT', '726-877-1628')
;
  SELECT * FROM tbl_persons;

SELECT * FROM tbl_contact;

CREATE TABLE tbl_products (
products_id INT PRIMARY KEY IDENTITY (1,1),
Products_Name VARCHAR (50),
Products_Price FLOAT
);

SELECT * FROM tbl_products

INSERT INTO tbl_products
(Products_Name, Products_Price)
VALUES 
('Broccoli Crowns', 2.49),
('Cauliflower', 1.99),
('Zucchini', .99),
('Tomatoes', 1.49),
('Onions', .25),
('Garlic', .50)
;

 CREATE TABLE tbl_orders ( 
  OrderId INT PRIMARY KEY IDENTITY (1,1),
  OrderDate DATETIME,
  CustomerID int,
  ProductID int
);

SELECT contact_id AS 'Customer ID', contact_Address AS 'Address', contact_City AS 'City', contact_State AS 'State', contact_Phone AS 'Phone:' FROM tbl_contact;

INSERT INTO tbl_orders 
(OrderDate, CustomerID, ProductID)
VALUES 
(GetDate (),8,4);
