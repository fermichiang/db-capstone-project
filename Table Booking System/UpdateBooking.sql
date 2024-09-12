DELIMITER $$

CREATE PROCEDURE UpdateBooking(
    IN booking_id INT, 
    IN new_booking_date DATE
)
BEGIN
    -- Update the booking date for the given BookingID
    UPDATE Bookings
    SET BookingDate = new_booking_date
    WHERE BookingID = booking_id;

    -- Confirmation message
    SELECT CONCAT('Booking ', booking_id, ' updated') AS Confirmation;
END $$

DELIMITER ;
