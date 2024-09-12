DELIMITER $$

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
    DECLARE booking_status VARCHAR(255);

    -- Check if the table is already booked
    SELECT CASE
        WHEN COUNT(*) > 0 THEN CONCAT('Table ', table_number, ' is already booked')
        ELSE CONCAT('Table ', table_number, ' is available')
    END INTO booking_status
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_number;

    -- Return the booking status
    SELECT booking_status AS 'Booking status';

END $$

DELIMITER ;
