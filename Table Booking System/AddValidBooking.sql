DELIMITER $$

CREATE PROCEDURE AddValidBooking(
    IN booking_date DATE, 
    IN table_number INT,
    IN customer_id INT
)
BEGIN
    DECLARE table_booked INT DEFAULT 0;

    -- Start the transaction
    START TRANSACTION;

    -- Check if the table is already booked on the given date
    SELECT COUNT(*) INTO table_booked
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_number;

    -- If the table is already booked, rollback the transaction
    IF table_booked > 0 THEN
        -- Table is already booked
        SELECT CONCAT('Table ', table_number, ' is already booked') AS 'Booking status';
        ROLLBACK;
    ELSE
        -- Table is available, insert the new booking
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (booking_date, table_number, customer_id);

        -- Commit the transaction
        COMMIT;

        -- Confirm booking
        SELECT CONCAT('Table ', table_number, ' has been booked successfully') AS 'Booking status';
    END IF;
END $$

DELIMITER ;
