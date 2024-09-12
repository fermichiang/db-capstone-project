PREPARE GetOrderDetail FROM 
'SELECT OrderID, Quantity, TotalCost 
 FROM Orders
 JOIN Bookings ON Orders.BookingID = Bookings.BookingID
 WHERE Bookings.CustomerID = ?';
