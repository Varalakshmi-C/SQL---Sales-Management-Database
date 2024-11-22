CREATE DATABASE Sales_Managemnet_Database;
USE Sales_Managemnet_Database;

-- Create the Customers Table
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);
-- Create the Products Table
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    Stock INT
);

-- Create the Sales Table
CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY ,
    Customer_ID INT,
    Sale_Date DATE,
    Total_Amount DECIMAL(10, 4),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

-- Create the Sales_Details Table
CREATE TABLE Sales_Details (
    Sale_Detail_ID INT PRIMARY KEY,
    Sale_ID INT,
    Product_ID INT,
    Quantity INT,
    Subtotal DECIMAL(10,4), 
    FOREIGN KEY (Sale_ID) REFERENCES Sales(Sale_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

-- Insert Data into Customers Table
INSERT INTO Customers (Customer_ID, Name, Email, Phone, Address)
VALUES 
	(1, 'Aarav', 'aarav123@.com', '9876543210', 'MG Road - Bengaluru'),
	(2, 'Aanya', 'aanya123@.com', '9775432180', 'Nungambakkam High Road - Chennai'),
	(3, 'Vishal', 'vishal123@.com', '9676543210', 'Park Street - Kolkata'),
	(4, 'Aarna', 'aarna123@.com', '9576543210', 'MG Road - Bengaluru'),
	(5, 'Vishnu', 'vishnu123@.com', '9476543210', 'Bose Road - Kolkata'),
	(6, 'Siva', 'siva123@.com', '9376543210', 'Nungambakkam High Road - Chennai'),
	(7, 'Aashi', 'aashi123@.com', '9276543210', 'Park Street - Kolkata'),
	(8, 'Advika', 'advika123@.com', '9176543210', 'Nehru Road - Kolkata'),
	(9, 'Dharsha', 'dharsha123@.com', '9871543210', 'Balewadi Road - Pune'),
	(10, 'Karan', 'kaan123@.com', '9872543210', 'Krishna Nagar Road - Delhi'),
	(11, 'Kiran', 'kiran123@.com', '9873543210', 'MG Road - Bengaluru'),
	(12, 'Aditi', 'aditi123@.com', '9874543210', 'Nungambakkam High Road - Chennai'),
	(13, 'Anika', 'anika123@.com', '9875543210', 'Park Street - Kolkata'),
	(14, 'Myra', 'myra123@.com', '9876543210', 'Marina Beach Road - Chennai'),
	(15, 'Kamal', 'kamal123@.com', '9870543210', 'Krishna Nagar Road - Delhi'),
	(16, 'Vimal', 'vimal123@.com', '9878543210', 'Nehru Road - Kolkata'),
	(17, 'Maran', 'maran123@.com', '9879543210', 'Balewadi Road - Pune'),
	(18, 'Naveen', 'naveen123@.com', '9876143210', 'Marina Beach Road - Chennai'),
	(19, 'Eesha', 'eesha123@.com', '9876243210', 'Bose Road - Kolkata'),
	(20, 'Kiara', 'kiara123@.com', '9876343210', 'Krishna Nagar Road - Delhi'),
	(21, 'Saanvi', 'saanvi123@.com', '9876443210', 'Nehru Road - Kolkata'),
	(22, 'Amulya', 'amulya123@.com', '9876043210', 'Nungambakkam High Road - Chennai'),
	(23, 'Dinesh', 'dinesh123@.com', '9876643210', 'Park Street - Kolkata'),
	(24, 'Ajay', 'ajay123@.com', '9876743210', 'MG Road - Bengaluru'),
	(25, 'Ojas', 'ojas123@.com', '9876843210', 'Nehru Road - Kolkata'),
	(26, 'Ahana', 'ahana123@.com', '9876943210', 'Bose Road - Kolkata'),
	(27, 'Amara', 'amara123@.com', '9876513210', 'Krishna Nagar Road - Delhi'),
	(28, 'Barkha', 'barkha123@.com', '9876523210', 'Balewadi Road - Pune'),
	(29, 'Ritvik', 'rithvik123@.com', '9876533210', 'Marina Beach Road - Chennai'),
	(30, 'Tanveer', 'tanveer123@.com', '9876503210', 'Park Street - Kolkata'),
	(31, 'Samay', 'samay123@.com', '9876553210', 'MG Road - Bengaluru'),
	(32, 'Charvi', 'charvi123@.com', '9876563210', 'Krishna Nagar Road - Delhi'),
	(33, 'Daksha', 'daksha123@.com', '9876573210', 'Nungambakkam High Road - Chennai'),
	(34, 'Nayan', 'nayan123@.com', '9876583210', 'MG Road - Bengaluru'),
	(35, 'Prithvi', 'prithvi123@.com', '9876593210', 'Bose Road - Kolkata'),
	(36, 'Darika', 'darika123@.com', '9876541210', 'Park Street - Kolkata'),
	(37, 'Zyan', 'zyan123@.com', '9876542210', 'Balewadi Road - Pune'),
	(38, 'Vamika', 'vamika123@.com', '9876540210', 'Marina Beach Road - Chennai'),
	(39, 'Parth', 'parth123@.com', '9876544210', 'Nehru Road - Kolkata'),
	(40, 'Maya', 'maya123@.com', '9876545210', 'Bose Road - Kolkata'),
	(41, 'Karthik', 'karthik123@.com', '9876546210', 'Nungambakkam High Road - Chennai'),
	(42, 'Dharsha', 'dharsha123@.com', '9876547210', 'Krishna Nagar Road - Delhi'),
	(43, 'Advika', 'advika123@.com', '9876548210', 'Balewadi Road - Puneu'),
	(44, 'Aarvi', 'aarvi123@.com', '9876549210', 'Marina Beach Road - Chennai'),
	(45, 'Shivansh', 'shivansh123@.com', '9876543110', 'Nehru Road - Kolkata'),
	(46, 'Veer', 'veer123@.com', '9876543211', 'Nungambakkam High Road - Chennai'),
	(47, 'Kashvi', 'kashvi123@.com', '9876543222', 'MG Road - Bengaluru'),
	(48, 'Ridhi', 'ridhi123@.com', '9876543213', 'Park Street - Kolkata'),
	(49, 'Jahnavi', 'jahnavi123@.com', '9876543214', 'Krishna Nagar Road - Delhi'),
	(50, 'Kunal', 'kunal123@.com', '9876543215', 'Nehru Road - Kolkata'),
	(51, 'Pranav', 'pranav123@.com', '9876543216', 'Balewadi Road - Pune'),
	(52, 'Aviraj', 'aviraj123@.com', '9876543217', 'Bose Road - Kolkata'),
	(53, 'Aarush', 'aarush123@.com', '9876543218', 'Park Street - Kolkata'),
	(54, 'Tanvi', 'tanvi123@.com', '9876543219', 'MG Road - Bengaluru'),
	(55, 'Farida', 'farida23@.com', '9876543200', 'Krishna Nagar Road - Delhi'),
	(56, 'Sindhu', 'sindhu123@.com', '9876543220', 'Nungambakkam High Road - Chennai'),
	(57, 'Devi', 'devi123@.com', '9876543230', 'Marina Beach Road - Chennai'),
	(58, 'Meera', 'meera123@.com', '9876543240', 'Park Street - Kolkata'),
	(59, 'Harsh', 'harsh123@.com', '9876543250', 'Nehru Road - Kolkata'),
	(60, 'Kushal', 'kushal123@.com', '9876543260', 'Balewadi Road - Pune'),
	(61, 'Samarth', 'samarth123@.com', '9876543270', 'MG Road - Bengaluru'),
	(62, 'Siddhu', 'siddhu123@.com', '9876543280', 'Gandhi Road - Ahmedabad'),
	(63, 'Rishabh', 'rishabh123@.com', '9876543290', 'Bose Road - Kolkata'),
	(64, 'Kamala', 'kamala123@.com', '8876543210', 'Broadway - Chennai'),
	(65, 'Lakshmi', 'lakshmi123@.com', '7876543210', 'Gandhi Nagar Road - jaipur'),
	(66, 'Pragya', 'pragya123@.com', '6876543210', 'Alwar Road - Jaipur'),
	(67, 'Sarika', 'sarika123@.com', '9876543210', 'Dastur Meher Road - Mumbai'),
	(68, 'Aryan', 'aryan123@.com', '9876543201', 'Teynampet - Chennai'),
	(69, 'Yash', 'yash123@.com', '9876663210', 'Balewadi Road - Pune'),
	(70, 'Tanay', 'tanay123@.com', '9877743210', 'Madhapur Road - Hyderabad'),
	(71, 'Vihaan', 'vihaan123@.com', '9888543210', 'Hosur Road - Bengaluru'),
	(72, 'Uma', 'uma123@.com', '9996543210', 'MG Road - Bengaluru'),
	(73, 'Sita', 'sita123@.com', '9876543210', 'MG Road - Bengaluru'),
	(74, 'Agastya', 'agastya123@.com', '9888543210', 'Bose Road - Kolkata'),
	(75, 'Anaya', 'anaya123@.com', '9777543210', 'Cunningham Road - Bengaluru'),
	(76, 'Nirvan', 'niran123@.com', '9666543210', 'Ballygunge Circular Road Kolkata'),
	(77, 'Lakshya', 'lakshya123@.com', '9555543210', 'West Mambalam - Chennai'),
	(78, 'Jaya', 'jaya123@.com', '9444543210', 'Old Madras Road - Bengaluru'),
	(79, 'Navya', 'navya123@.com', '9333543210', 'Mokha Road - Nagpur'),
	(80, 'Kinaya', 'kinaya123@.com', '9222543210', 'Bogra Bazar - Kolkata'),
	(81, 'Kabir', 'kabir123@.com', '9111543210', 'Gulzar Bagh Road - Patna'),
	(82, 'Latha', 'latha123@.com', '9879993210', 'Balewadi Road - Pune'),
	(84, 'Liya', 'liya123@.com', '9877773210', 'Mysore Road - Bengaluru'),
	(85, 'Dhruv', 'dhruv123@.com', '9876663210', 'Balewadi Road - Pune'),
	(86, 'Krish', 'krish123@.com', '9875553210', 'Madhapur Road - Hyderabad'),
	(87, 'Roja', 'roja123@.com', '9874443210', 'MG Road - Bengaluru'),
	(88, 'Atharv', 'atharv123@.com', '9873333210', 'MG Road - Bengaluru'),
	(89, 'Sri', 'sri123@.com', '9872223210', 'R.S. Naidu Road - Chennai'),
	(90, 'Rudra', 'rudra123@.com', '9871113210', 'Hosur Road - Bengaluru'),
	(91, 'Sai', 'sai123@.com', '9870003210', 'MG Road - Mumbai'),
	(92, 'Zara', 'zarav123@.com', '9876541110', 'Bose Road - Kolkata'),
	(93, 'Ria', 'ria123@.com', '9876543330', 'MG Road - Bengaluru'),
	(94, 'Kiaan', 'kiaan123@.com', '9876542220', 'Cunningham Road - Bengaluru'),
	(95, 'Arjun', 'arjun123@.com', '9876544440', 'Ballygunge Circular Road Kolkata'),
	(96, 'Ayaana', 'ayaana123@.com', '9876545550', 'West Mambalam - Chennai'),
	(97, 'Nila', 'nila123@.com', '9876546660', 'Old Madras Roa - Bengaluru'),
	(98, 'Imara', 'imara123@.com', '9876547770', 'Mokha Road - Nagpur'),
	(99, 'Aria', 'aria123@.com', '9876548880', 'Bogra Bazar - Kolkata'),
	(100, 'Vivaan', 'vivan123@.com', '9876549990', 'Gulzar Bagh Road - Patna');
    
    INSERT INTO Customers values (83, 'Zoya','zoyz123@gmail.com', 8967452311, 'Gulzar Bagh Road - Patna');


    
-- Insert Data into Products Table
INSERT INTO Products (Product_ID, Name,Category, Price, Stock)
VALUES
(1, 'Smart TV', 'Electronics', 255000.00, 28),
(2, 'Home Theater Systems', 'Electronics', 5000.00, 32),
(3, 'Laptop', 'Electronics', 40000.00, 18),
(4, 'i Pad', 'Electronics', 49900.00, 10),
(5, 'Vaccum Cleaners', 'Electronics', 8000.00, 48),
(6, 'Book Shelf', 'Furniture', 3000.00, 31),
(7, 'Dining Table', 'Furniture', 9000.00, 10),
(8, 'Bed Frames', 'Furniture', 7000.00, 22),
(9, 'Chairs', 'Plastics', 800.00, 45),
(10, 'Cups', 'Ceramic', 40000.00, 18);


-- Insert Data into Sales Table
INSERT INTO Sales (Sale_ID, Customer_ID, Sale_Date, Total_Amount)
VALUES
	(1, 1, '2024-01-03',3000.00),
	(2, 2, '2024-01-03', 8000.00),
	(3, 3, '2024-01-03', 3000.00),
	(4, 4, '2024-01-04', 40500.00),
	(5, 5, '2024-01-04', 25500.00),
	(6, 6, '2024-01-05', 800.00),
	(7, 7, '2024-01-06', 5000.00),
	(8, 8, '2024-01-06', 7000.00),
	(9, 9, '2024-01-07', 40000.00),
	(10, 10, '2024-01-07', 9000.00),
	(11, 11, '2024-01-20', 49900.00),
	(12, 12, '2024-01-21', 49900.00),
	(13, 13, '2024-01-25', 8000.00),
	(14, 14, '2024-01-25', 3000.00),
	(15, 15, '2024-01-26', 7000.00),
	(16, 16, '2024-01-26', 40000.00),
	(17, 17, '2024-01-26', 50400.00),
	(18, 18, '2024-01-27', 7000.00),
	(19, 19, '2024-01-27', 8800.00),
	(20, 20, '2024-02-08', 5000.00),
	(21, 21, '2024-02-08', 7000.00),
	(22, 22, '2024-02-08', 40000.00),
	(23, 23, '2024-02-28', 40000.00),
	(24, 24, '2024-03-13', 8000.00),
	(25, 25, '2024-03-13', 7000.00),
	(26, 26, '2024-03-13', 3000.00),
	(27, 27, '2024-03-13', 3500.00),
	(28, 28, '2024-03-13', 5000.00),
	(29, 29, '2024-04-18', 9800.00),
	(30, 30, '2024-04-18', 25500.00),
	(31, 31, '2024-04-18', 7000.00),
	(32, 32, '2024-05-20', 500.00),
	(33, 33, '2024-05-20', 7800.00),
	(34, 34, '2024-05-21', 7000.00),
	(35, 35, '2024-05-22', 9000.00),
	(36, 36, '2024-05-23', 3000.00),
	(37, 37, '2024-05-24', 8000.00),
	(38, 38, '2024-06-05', 49900.00),
	(39, 39, '2024-06-05', 40000.00),
	(40, 40, '2024-06-06', 5000.00),
	(41, 41, '2024-06-09', 25500.00),
	(42, 42, '2024-06-10', 5000.00),
	(43, 43, '2024-06-12', 40000.00),
	(44, 44, '2024-06-14', 49900.00),
	(45, 45, '2024-06-25', 8000.00),
	(46, 46, '2024-06-29', 3000.00),
	(47, 47, '2024-06-29', 9000.00),
	(48, 48, '2024-06-29', 7000.00),
	(49, 49, '2024-07-02', 800.00),
	(50, 50, '2024-07-02', 26000.00),
	(51, 51, '2024-07-09', 800.00),
	(52, 52, '2024-07-09', 5500.00),
	(53, 53, '2024-07-15', 5000.00),
	(54, 54, '2024-07-15', 40000.00),
	(55, 55, '2024-07-15', 9000.00),
	(56, 56, '2024-07-15', 8000.00),
	(57, 57, '2024-07-19', 49900.00),
	(58, 58, '2024-07-19', 3000.00),
	(59, 59, '2024-07-19', 9000.00),
	(60, 60, '2024-07-27', 25500.00),
	(61, 61, '2024-08-10', 800.00),
	(62, 62, '2024-08-10', 5000.00),
	(63, 63, '2024-08-10', 40500.00),
	(64, 64, '2024-08-22', 3000.00),
	(65, 65, '2024-08-22', 56900.00),
	(66, 66, '2024-08-28', 8000.00),
	(67, 67, '2024-09-14', 40000.00),
	(68, 68, '2024-09-14', 7000.00),
	(69, 69, '2024-09-15', 5000.00),
	(70, 70, '2024-09-15', 8800.00),
	(71, 71, '2024-09-15', 26000.00),
	(72, 72, '2024-09-16', 40000.00),
	(73, 73, '2024-09-16', 3000.00),
	(74, 74, '2024-09-16', 8000.00),
	(75, 75, '2024-09-16', 49900.00),
	(76, 76, '2024-09-18', 49900.00),
	(77, 77, '2024-09-18', 49900.00),
	(78, 78, '2024-09-18', 9000.00),
	(79, 79, '2024-09-20', 40000.00),
	(80, 80, '2024-09-20', 7000.00),
	(81, 81, '2024-09-20', 5000.00),
	(82, 82, '2024-09-20', 3000.00),
	(83, 83, '2024-09-29', 7000.00),
	(84, 84, '2024-09-29', 49900.00),
	(85, 85, '2024-09-29', 8000.00),
	(86, 86, '2024-09-29', 49900.00),
	(87, 87, '2024-09-30', 49900.00),
	(88, 88, '2024-09-30', 8000.00),
	(89, 89, '2024-10-01', 49900.00),
	(90, 90, '2024-10-02', 7000.00),
	(91, 91, '2024-10-02', 3000.00),
	(92, 92, '2024-10-03', 9000.00),
	(93, 93, '2024-10-04', 40000.00),
	(94, 94, '2024-10-04', 5000.00),
	(95, 95, '2024-10-04', 5500.00),
	(96, 96, '2024-10-04', 40800.00),
	(97, 97, '2024-10-05', 50400.00),
	(98, 98, '2024-10-06', 8800.00),
	(99, 99, '2024-10-06', 7000.00),
	(100, 100, '2024-10-06', 12000.00); 
    

-- Insert Data into Sales_Details Table
INSERT INTO Sales_Details (Sale_Detail_ID, Sale_ID, Product_ID, Quantity, Subtotal)
values 
	(1,1,6,1,3000.00),
    (2,2,5,1,8000.00),
    (3,3,6,1,3000.00),
    (4,4,10,1,500.00),
    (5,4,3,1,40000.00),
    (6,5,1,1,25500.00),
    (7,6,9,1,800.00),
    (8,7,2,1,5000.00),
    (9,8,8,1,7000.00),
    (10,9,3,1,40000.00),
    (11,10,7,1,9000.00),
    (12,11,4,1,49900.00),
    (13,12,4,1,49900.00),
    (14,13,5,1,8000.00),
    (15,14,6,1,3000.00),
    (16,15,7,1,9000.00),
    (17,16,3,1,40000.00),
    (18,17,10,1,500.00),
    (19,17,4,1,49900.00),
    (20,18,8,1,7000.00),
    (21,19,9,1,800.00),
    (22,19,5,1,8000.00),
    (23,20,2,1,5000.00),
    (24,21,8,1,7000.00),
    (25,22,3,1,40000.00),
    (26,23,3,1,40000.00),
    (27,24,5,1,8000.00),
    (28,25,8,1,7000.00),
    (29,26,6,1,3000.00),
    (30,27,10,1,500.00),
    (31,27,6,1,3000.00),
    (32,28,2,1,5000.00),
    (33,29,9,1,8000.00),
    (34,29,7,1,9000.00),
    (35,30,1,1,25500.00),
    (36,31,8,1,7000.00),
    (37,32,10,1,500.00),
    (38,33,9,1,8000.00),
    (39,33,8,1,7000.00),
    (40,34,8,1,7000.00),
    (41,35,7,1,9000.00),
    (42,36,6,1,3000.00),
    (43,37,5,1,8000.00),
    (44,38,4,1,49900.00),
    (45,39,3,1,40000.00),
    (46,40,2,1,5000.00),
    (47,41,1,1,25500.00),
    (48,42,2,1,5000.00),
    (49,43,3,1,40000.00),
    (50,44,4,1,49900.00),
    (51,45,5,1,8000.00),
    (52,46,6,1,3000.00),
    (53,47,7,1,9000.00),
    (54,48,8,1,7000.00),
    (55,49,9,1,8000.00),
    (56,50,10,1,500.00),
    (57,50,1,1,25500.00),
    (58,51,9,1,800.00),
    (59,52,10,1,500.00),
    (60,52,2,1,5000.00),
    (61,53,2,1,5000.00),
    (62,54,3,1,40000.00),
    (63,55,7,1,9000.00),
    (64,56,6,1,3000.00),
    (65,57,4,1,49900.00),
    (66,58,6,1,3000.00),
    (67,59,7,1,9000.00),
    (68,60,1,1,25500.00),
    (69,61,9,1,800.00),
    (70,62,2,1,5000.00),
    (71,63,10,1,500.00),
    (72,63,3,1,40000.00),
    (73,64,6,1,3000.00),
    (74,65,8,1,7000.00),
    (75,65,4,1,49900.00),
    (76,66,5,1,8000.00),
    (77,67,3,1,40000.00),
    (78,68,8,1,7000.00),
    (79,69,2,1,5000.00),
    (80,70,9,1,800.00),
    (81,70,5,1,8000.00),
    (82,71,10,1,500.00),
    (83,71,1,1,25500.00),
    (84,72,3,1,40000.00),
    (85,73,6,1,3000.00),
    (86,74,5,1,8000.00),
    (87,75,4,1,49900.00),
    (88,76,4,1,49900.00),
    (89,77,4,1,49900.00),
    (90,78,7,1,9000.00),
    (91,79,3,1,40000.00),
    (92,80,8,1,7000.00),
    (93,81,2,1,5000.00),
    (94,82,6,1,3000.00),
    (95,83,8,1,7000.00),
    (96,84,4,1,49900.00),
    (97,85,5,1,8000.00),
    (98,86,4,1,49900.00),
    (99,87,4,1,49900.00),
    (100,88,5,1,8000.00),
    (101,89,4,1,49900.00),
    (102,90,8,1,7000.00),
    (103,91,6,1,3000.00),
    (104,92,7,1,9000.00),
    (105,93,3,1,40000.00),
    (106,94,2,1,5000.00),
    (107,95,10,1,500.00),
    (108,95,2,1,5000.00),
    (109,96,9,1,800.00),
    (110,96,3,1,40000.00),
    (111,97,10,1,500.00),
    (112,97,4,1,49900.00),
    (113,98,9,1,800.00),
    (114,98,5,1,8000.00),
    (115,99,8,1,7000.00),
	(116,100,7,1,9000.00),
	(117,100,6,1,3000.00);
    
   -- list the sales and details
   SELECT 
    s.Sale_ID, 
    c.Name AS Customer_Name, 
    s.Sale_Date, 
    p.Name AS Product_Name, 
    sd.Quantity, 
    sd.Subtotal
FROM 
    Sales s
JOIN 
    Customers c ON s.Customer_ID = c.Customer_ID
JOIN 
    Sales_Details sd ON s.Sale_ID = sd.Sale_ID
JOIN 
    Products p ON sd.Product_ID = p.Product_ID;
    
   -- Find the total sales amount for each customer
SELECT 
    c.Name AS Customer_Name, 
    SUM(s.Total_Amount) AS Total_Sales
FROM 
    Sales s
JOIN 
    Customers c ON s.Customer_ID = c.Customer_ID
GROUP BY 
    c.Name;
    
-- List products and low stock
SELECT 
	Product_ID, Name, Stock 
FROM 
    Products
WHERE 
    Stock < 5;
    
-- Get sales summary for a specific date
SELECT 
    s.Sale_Date, 
    COUNT(s.Sale_ID) AS Total_Sales, 
    SUM(s.Total_Amount) AS Total_Revenue
FROM 
    Sales s
WHERE 
    s.Sale_Date = '2024-10-06'
GROUP BY 
    s.Sale_Date;
