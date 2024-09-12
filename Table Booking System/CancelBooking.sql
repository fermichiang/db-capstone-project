DELIMITER $$

CREATE PROCEDURE CancelBooking(
    IN booking_id INT
)
BEGIN
    -- Delete the booking with the given BookingID
    DELETE FROM Bookings
    WHERE BookingID = booking_id;

    -- Confirmation message
    SELECT CONCAT('Booking ', booking_id, ' cancelled') AS Confirmation;
END $$

DELIMITER ;

