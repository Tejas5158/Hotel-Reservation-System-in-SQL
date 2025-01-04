create database project2;
use project2;


CREATE TABLE Guests (
    GuestID INT PRIMARY KEY AUTO_INCREMENT,
    GuestName VARCHAR(100) NOT NULL,
    GuestEmail VARCHAR(100) NOT NULL UNIQUE,
    PhoneNumber VARCHAR(15),
    Address TEXT
);


CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY AUTO_INCREMENT,
    RoomType VARCHAR(50) NOT NULL,
    RoomPrice DECIMAL(10, 2) NOT NULL,
    RoomStatus ENUM('Available', 'Occupied') DEFAULT 'Available'
);


CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    GuestID INT NOT NULL,
    RoomID INT NOT NULL,
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    ReservationDate DATE NOT NULL,
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);


CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ReservationID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    AmountPaid DECIMAL(10, 2) NOT NULL,
    PaymentMethod ENUM('Cash', 'Credit Card', 'Debit Card') NOT NULL,
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID)
);

INSERT INTO Guests (GuestName, GuestEmail, PhoneNumber, Address) 
VALUES
('John Doe', 'john.doe@example.com', '1234567890', '123 Main Street'),
('Jane Smith', 'jane.smith@example.com', '2345678901', '456 Elm Avenue'),
('Alice Johnson', 'alice.johnson@example.com', '3456789012', '789 Oak Lane'),
('Mark Brown', 'mark.brown@example.com', '5678901234', '101 Pine Street'),
('Emily Davis', 'emily.davis@example.com', '6789012345', '202 Maple Avenue'),
('Chris Wilson', 'chris.wilson@example.com', '7890123456', '303 Birch Lane'),
('Sophia Martinez', 'sophia.martinez@example.com', '8901234567', '404 Cedar Street'),
('Ryan Lopez', 'ryan.lopez@example.com', '9012345678', '505 Walnut Avenue'),
('Lily Hall', 'lily.hall@example.com', '1234567891', '606 Oakwood Lane'),
('Nathan Harris', 'nathan.harris@example.com', '2345678902', '707 Elmwood Street'),
('Olivia Turner', 'olivia.turner@example.com', '3456789013', '808 Pinecrest Avenue'),
('James Scott', 'james.scott@example.com', '4567890124', '909 Maplewood Lane'),
('Emma Walker', 'emma.walker@example.com', '5678901235', '101 Birchwood Street'),
('Noah Young', 'noah.young@example.com', '6789012346', '202 Cedarwood Avenue'),
('Isabella Allen', 'isabella.allen@example.com', '7890123457', '303 Walnutwood Lane'),
('Liam King', 'liam.king@example.com', '8901234568', '404 Elmcrest Street'),
('Mia Wright', 'mia.wright@example.com', '9012345679', '505 Pinehill Avenue'),
('Ethan Hill', 'ethan.hill@example.com', '1234567892', '606 Maplehill Lane'),
('Amelia Green', 'amelia.green@example.com', '2345678903', '707 Cedarhill Street'),
('Lucas Adams', 'lucas.adams@example.com', '3456789014', '808 Walnutcrest Avenue'),
('Ava Baker', 'ava.baker@example.com', '4567890125', '909 Elmhill Lane'),
('Benjamin Carter', 'benjamin.carter@example.com', '5678901236', '101 Maplecrest Street'),
('Charlotte Mitchell', 'charlotte.mitchell@example.com', '6789012347', '202 Birchhill Avenue'),
('Michael Perez', 'michael.perez@example.com', '7890123458', '303 Cedarcrest Lane'),
('Harper Brooks', 'harper.brooks@example.com', '8901234569', '404 Walnutwood Avenue');

select*
from guests;

INSERT INTO Rooms (RoomType, RoomPrice, RoomStatus) 
VALUES
('Deluxe', 150.00, 'Available'),
('Standard', 100.00, 'Available'),
('Suite', 200.00, 'Occupied'),
('Economy', 80.00, 'Available'),
('Luxury', 250.00, 'Occupied'),
('Deluxe', 150.00, 'Occupied'),
('Standard', 100.00, 'Available'),
('Suite', 200.00, 'Available'),
('Economy', 80.00, 'Available'),
('Luxury', 250.00, 'Available'),
('Deluxe', 150.00, 'Available'),
('Standard', 100.00, 'Occupied'),
('Suite', 200.00, 'Available'),
('Economy', 80.00, 'Available'),
('Luxury', 250.00, 'Occupied'),
('Deluxe', 150.00, 'Available'),
('Standard', 100.00, 'Available'),
('Suite', 200.00, 'Occupied'),
('Economy', 80.00, 'Available'),
('Luxury', 250.00, 'Available'),
('Deluxe', 150.00, 'Available'),
('Standard', 100.00, 'Occupied'),
('Suite', 200.00, 'Available'),
('Economy', 80.00, 'Available'),
('Luxury', 250.00, 'Occupied');


select *
from rooms;

INSERT INTO Reservations (GuestID, RoomID, CheckInDate, CheckOutDate, ReservationDate) 
VALUES
(1, 1, '2024-01-01', '2024-01-05', '2023-12-20'),
(2, 2, '2024-01-03', '2024-01-07', '2023-12-21'),
(3, 3, '2024-01-04', '2024-01-10', '2023-12-22'),
(4, 4, '2024-01-06', '2024-01-12', '2023-12-23'),
(5, 5, '2024-01-08', '2024-01-14', '2023-12-24'),
(6, 6, '2024-01-09', '2024-01-15', '2023-12-25'),
(7, 7, '2024-01-11', '2024-01-17', '2023-12-26'),
(8, 8, '2024-01-13', '2024-01-19', '2023-12-27'),
(9, 9, '2024-01-14', '2024-01-20', '2023-12-28'),
(10, 10, '2024-01-16', '2024-01-22', '2023-12-29'),
(11, 11, '2024-01-18', '2024-01-24', '2023-12-30'),
(12, 12, '2024-01-20', '2024-01-26', '2023-12-31'),
(13, 13, '2024-01-22', '2024-01-28', '2024-01-01'),
(14, 14, '2024-01-24', '2024-01-30', '2024-01-02'),
(15, 15, '2024-01-26', '2024-02-01', '2024-01-03'),
(16, 16, '2024-01-28', '2024-02-03', '2024-01-04'),
(17, 17, '2024-01-30', '2024-02-05', '2024-01-05'),
(18, 18, '2024-02-01', '2024-02-06', '2024-01-06'),
(19, 19, '2024-02-03', '2024-02-08', '2024-01-07'),
(20, 20, '2024-02-05', '2024-02-10', '2024-01-08'),
(21, 21, '2024-02-07', '2024-02-12', '2024-01-09'),
(22, 22, '2024-02-09', '2024-02-14', '2024-01-10'),
(23, 23, '2024-02-11', '2024-02-16', '2024-01-11'),
(24, 24, '2024-02-13', '2024-02-18', '2024-01-12'),
(25, 25, '2024-02-15', '2024-02-20', '2024-01-13');


select *
from reservations;

INSERT INTO Payments (ReservationID, PaymentDate, AmountPaid, PaymentMethod) 
VALUES
(1, '2023-12-20', 750.00, 'Credit Card'),
(2, '2023-12-21', 500.00, 'Cash'),
(3, '2023-12-22', 1000.00, 'Debit Card'),
(4, '2023-12-23', 800.00, 'Credit Card'),
(5, '2023-12-24', 600.00, 'Cash'),
(6, '2023-12-25', 1200.00, 'Debit Card'),
(7, '2023-12-26', 900.00, 'Credit Card'),
(8, '2023-12-27', 700.00, 'Cash'),
(9, '2023-12-28', 1500.00, 'Debit Card'),
(10, '2023-12-29', 1400.00, 'Credit Card'),
(11, '2023-12-30', 1100.00, 'Cash'),
(12, '2023-12-31', 1300.00, 'Debit Card'),
(13, '2024-01-01', 750.00, 'Credit Card'),
(14, '2024-01-02', 500.00, 'Cash'),
(15, '2024-01-03', 1000.00, 'Debit Card'),
(16, '2024-01-04', 800.00, 'Credit Card'),
(17, '2024-01-05', 600.00, 'Cash'),
(18, '2024-01-06', 1200.00, 'Debit Card'),
(19, '2024-01-07', 900.00, 'Credit Card'),
(20, '2024-01-08', 700.00, 'Cash'),
(21, '2024-01-09', 1500.00, 'Debit Card'),
(22, '2024-01-10', 1400.00, 'Credit Card'),
(23, '2024-01-11', 1100.00, 'Cash'),
(24, '2024-01-12', 1300.00, 'Debit Card'),
(25, '2024-01-13', 900.00, 'Credit Card');

select *
from payments;

-- Basic Queries
-- 1.Retrieve all guest details.
SELECT * FROM Guests;

-- 2.Find all rooms that are currently available.

SELECT * FROM Rooms WHERE RoomStatus = 'Available';

-- 3.List all reservations made in 2024.
SELECT * FROM Reservations WHERE YEAR(ReservationDate) = 2024;

-- 4.Retrieve all payments made using a credit card.
SELECT * FROM Payments WHERE PaymentMethod = 'Credit Card';

-- 5.Find all guests from a specific city (e.g., "New York").
SELECT * FROM Guests WHERE Address LIKE '%New York%';

-- Filtering and Sorting
-- 6.List all luxury rooms sorted by price in descending order.

SELECT * FROM Rooms WHERE RoomType = 'Luxury' ORDER BY RoomPrice DESC;

-- 7.Retrieve all reservations with a stay duration of more than 5 days.
SELECT *, DATEDIFF(CheckOutDate, CheckInDate) AS StayDuration
FROM Reservations
WHERE DATEDIFF(CheckOutDate, CheckInDate) > 5;

-- 8.Find all payments made after January 1, 2024.
SELECT * FROM Payments WHERE PaymentDate > '2024-01-01';

-- 9.List all guests sorted by their names in alphabetical order.
SELECT * FROM Guests ORDER BY GuestName ASC;

-- 10.Retrieve all reservations sorted by the check-in date in descending order.
SELECT * FROM Reservations ORDER BY CheckInDate DESC;


-- Aggregate Functions

-- 11.Find the total revenue collected from all payments.
SELECT SUM(AmountPaid) AS TotalRevenue FROM Payments;


-- 12.Count the total number of reservations.
SELECT COUNT(*) AS TotalReservations FROM Reservations;

-- 13.Find the average price of all rooms.
SELECT AVG(RoomPrice) AS AveragePrice FROM Rooms;


-- 14.Find the maximum payment amount made.
SELECT MAX(AmountPaid) AS MaxPayment FROM Payments;


-- 15.Find the total revenue collected by each payment method.
SELECT PaymentMethod, SUM(AmountPaid) AS TotalRevenue
FROM Payments
GROUP BY PaymentMethod;

-- Joins

-- 16.Retrieve all reservations with guest names and room types.

SELECT Reservations.ReservationID, Guests.GuestName, Rooms.RoomType
FROM Reservations
INNER JOIN Guests ON Reservations.GuestID = Guests.GuestID
INNER JOIN Rooms ON Reservations.RoomID = Rooms.RoomID;

-- 17.Find payment details with guest names and reservation dates.
SELECT Guests.GuestName, Payments.AmountPaid, Payments.PaymentDate
FROM Payments
INNER JOIN Reservations ON Payments.ReservationID = Reservations.ReservationID
INNER JOIN Guests ON Reservations.GuestID = Guests.GuestID;


-- 18.List all room types and their total bookings.

SELECT Rooms.RoomType, COUNT(Reservations.ReservationID) AS TotalBookings
FROM Reservations
INNER JOIN Rooms ON Reservations.RoomID = Rooms.RoomID
GROUP BY Rooms.RoomType;


-- 19.Find all guests who have made a reservation but have no payment record.
SELECT Guests.GuestName 
FROM Guests
INNER JOIN Reservations ON Guests.GuestID = Reservations.GuestID
LEFT JOIN Payments ON Reservations.ReservationID = Payments.ReservationID
WHERE Payments.PaymentID IS NULL;

-- 20.Retrieve all rooms and their reservation details.
SELECT Rooms.RoomID, Rooms.RoomType, Reservations.CheckInDate, Reservations.CheckOutDate
FROM Rooms
LEFT JOIN Reservations ON Rooms.RoomID = Reservations.RoomID;


-- Subqueries

-- 21.Find the guest with the highest payment.
SELECT GuestName 
FROM Guests
WHERE GuestID = (
    SELECT GuestID 
    FROM Reservations
    WHERE ReservationID = (
        SELECT ReservationID 
        FROM Payments
        WHERE AmountPaid = (SELECT MAX(AmountPaid) FROM Payments)
    )
);

-- 22.Retrieve the room details with the highest price.
SELECT * FROM Rooms WHERE RoomPrice = (SELECT MAX(RoomPrice) FROM Rooms);


-- 23.Find all reservations made in the same room as ReservationID = 5.
SELECT * FROM Reservations
WHERE RoomID = (SELECT RoomID FROM Reservations WHERE ReservationID = 5);


-- 24.List all guests who have made multiple reservations.
SELECT GuestID, COUNT(*) AS TotalReservations
FROM Reservations
GROUP BY GuestID
HAVING COUNT(*) > 1;


-- 25.Retrieve rooms that have not been reserved yet.
SELECT * FROM Rooms
WHERE RoomID NOT IN (SELECT RoomID FROM Reservations);


-- Date Functions

-- 26.Retrieve all reservations made in December.
SELECT * FROM Reservations WHERE MONTH(ReservationDate) = 12;


-- 27.Find the total revenue for each day.
SELECT PaymentDate, SUM(AmountPaid) AS DailyRevenue
FROM Payments
GROUP BY PaymentDate;


-- 28.Retrieve all guests who checked out today.
SELECT Guests.GuestName
FROM Reservations
INNER JOIN Guests ON Reservations.GuestID = Guests.GuestID
WHERE CheckOutDate = CURDATE();


-- Advanced Queries

-- 29.List all rooms along with the total revenue they have generated.
SELECT Rooms.RoomID, Rooms.RoomType, SUM(Payments.AmountPaid) AS TotalRevenue
FROM Rooms
INNER JOIN Reservations ON Rooms.RoomID = Reservations.RoomID
INNER JOIN Payments ON Reservations.ReservationID = Payments.ReservationID
GROUP BY Rooms.RoomID, Rooms.RoomType;


-- 30.Find all overlapping reservations for a specific room (e.g., RoomID = 101).
SELECT * 
FROM Reservations r1
WHERE RoomID = 101 AND EXISTS (
    SELECT 1 
    FROM Reservations r2
    WHERE r1.RoomID = r2.RoomID 
    AND r1.ReservationID <> r2.ReservationID
    AND r1.CheckInDate <= r2.CheckOutDate 
    AND r2.CheckInDate <= r1.CheckOutDate
);







