
--- Procedure 1: Add a New Participant: This procedure allows adding a new participant to the system.
CREATE PROCEDURE AddParticipant(
    IN pFirstName VARCHAR(100),
    IN pLastName VARCHAR(100),
    IN pEmail VARCHAR(100),
    IN pPhoneNumber VARCHAR(15)
)
BEGIN
    INSERT INTO Participant (FirstName, LastName, Email, PhoneNumber)
    VALUES (pFirstName, pLastName, pEmail, pPhoneNumber);
END;


--- Procedure 2: Book a Ticket for a Participant: This procedure allows a participant to book a ticket for an event.
CREATE PROCEDURE BookTicket(
    IN pParticipantID INT,
    IN pEventID INT,
    IN pTicketType VARCHAR(50),
    IN pPrice DECIMAL(10, 2),
    IN pPurchaseDate DATE
)
BEGIN
    INSERT INTO Ticket (TicketType, Price, EventID, ParticipantID, PurchaseDate)
    VALUES (pTicketType, pPrice, pEventID, pParticipantID, pPurchaseDate);
END;
