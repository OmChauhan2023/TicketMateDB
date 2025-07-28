
--- Trigger 1: Prevent Ticket Booking for Sold-Out Events
CREATE TRIGGER CheckEventCapacity BEFORE INSERT ON Ticket
FOR EACH ROW
BEGIN
    DECLARE availableSeats INT;
    SELECT Capacity - COUNT(*) INTO availableSeats
    FROM Ticket
    WHERE EventID = NEW.EventID;
    
    IF availableSeats <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Event is sold out';
    END IF;
END;


--- Trigger 2: Update Ticket Count When Event Is Cancelled
CREATE TRIGGER UpdateTicketCount AFTER DELETE ON Event
FOR EACH ROW
BEGIN
    DELETE FROM Ticket WHERE EventID = OLD.EventID;
END;

