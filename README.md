# Hotel-Reservation-System-in-SQL
SQL(MySQL)

Hotel Reservation System in SQL: Project Report
Introduction The Hotel Reservation System in SQL is a database management project aimed at streamlining hotel operations such as guest management, room allocation, reservations, and payment tracking. The system leverages SQL for efficient data handling and ensures data integrity through relationships between tables. This report provides an overview of the database design, data management, and key queries implemented.
________________________________________
Features and Functionalities
1.	Guest Management:
o	Tracks guest details such as contact information and address.
2.	Room Management:
o	Monitors room availability and pricing.
3.	Reservation System:
o	Allows guests to book rooms and records reservation details.
4.	Payment Tracking:
o	Logs payment details and supports multiple payment methods.
________________________________________
Key SQL Queries
1.	Retrieve All Available Rooms:
SELECT * FROM Rooms WHERE RoomStatus = 'Available';
2.	Find Reservations for a Specific Guest:
SELECT * FROM Reservations WHERE GuestID = 5;
3.	Calculate Total Revenue Collected:
SELECT SUM(AmountPaid) AS TotalRevenue FROM Payments;
________________________________________
Benefits of the System
1.	Efficiency: Reduces manual record-keeping and speeds up operations.
2.	Data Integrity: Ensures consistent and accurate data through relational database design.
3.	Scalability: Can accommodate increasing data volumes and hotel operations.
4.	Flexibility: Supports various queries for reporting and analysis.
________________________________________
Conclusion The Hotel Reservation System in SQL demonstrates the power of relational databases in managing complex hotel operations. By integrating guest management, room allocation, reservations, and payments, the system provides a robust framework for improving efficiency and decision-making in the hospitality industry. Future enhancements could include real-time integration with web applications and advanced analytics.

