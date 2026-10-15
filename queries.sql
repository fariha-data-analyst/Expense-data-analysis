CREATE TABLE ExpenseTable (
    TransactionID INT PRIMARY KEY,
    ExpenseDate DATE,
    Category VARCHAR(50),
    Description VARCHAR(100),
    Amount DECIMAL(10, 2)
);

 Insert your 10 rows of expense data
INSERT INTO ExpenseTable (TransactionID, ExpenseDate, Category, Description, Amount) 
VALUES 
(1, '2026-10-01', 'Food', 'Weekly Groceries', 1200.00),
(2, '2026-10-02', 'Transport', 'Auto Fare', 150.00),
(3, '2026-10-03', 'Bills', 'Electricity Bill', 2500.00),
(4, '2026-10-04', 'Shopping', 'New Shoes', 1800.00),
(5, '2026-10-05', 'Food', 'Dinner with Friends', 850.00),
(6, '2026-10-06', 'Entertainment', 'Movie Tickets', 500.00),
(7, '2026-10-07', 'Transport', 'Cab to Office', 300.00),
(8, '2026-10-08', 'Food', 'Coffee & Snacks', 200.00),
(9, '2026-10-09', 'Bills', 'Mobile Recharge', 499.00),
(10, '2026-10-10', 'Shopping', 'Stationery Items', 350.00);


SELECT Category, SUM(Amount) AS Total_Spent
FROM ExpenseTable
GROUP BY Category;

SELECT Category, Description, Amount
FROM ExpenseTable
ORDER BY Amount DESC;