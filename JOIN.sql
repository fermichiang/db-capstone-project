SELECT 
    Customers.CustomerID, 
    Customers.CustomerName, 
    Orders.OrderID, 
    Orders.TotalCost, 
    Menus.MenuName, 
    MenuItems.CourseName, 
    MenuItems.StarterName
FROM 
    Customers
JOIN Bookings ON Customers.CustomerID = Bookings.CustomerID
JOIN Orders ON Bookings.BookingID = Orders.BookingID
JOIN Order_Menu ON Orders.OrderID = Order_Menu.OrderID
JOIN Menus ON Order_Menu.MenuID = Menus.MenuID
JOIN MenuItems ON Menus.MenuItemsID = MenuItems.MenuItemsID
WHERE 
    Orders.TotalCost > 50
ORDER BY 
    Orders.TotalCost ASC;
