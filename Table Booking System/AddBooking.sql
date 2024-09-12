DELIMITER $$

CREATE PROCEDURE AddBooking(
    IN booking_id INT, 
    IN customer_id INT, 
    IN booking_date DATE, 
    IN table_number INT
)
BEGIN
    -- Insert the new booking record into the Bookings table
    INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNumber)
    VALUES (booking_id, customer_id, booking_date, table_number);

    -- Confirm the new booking
    SELECT 'New booking added' AS Confirmation;
END $$

DELIMITER ;




