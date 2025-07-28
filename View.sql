
--- View 1: All Events for a Specific Organizer 
CREATE VIEW View_EventsByOrganizer AS
SELECT E.EventID, E.EventName, E.EventDate, E.StartTime, E.EndTime, V.VenueName, O.FirstName AS OrganizerFirstName, O.LastName AS OrganizerLastName
FROM Event E
JOIN Venue V ON E.VenueID = V.VenueID
JOIN Organizer O ON E.OrganizerID = O.OrganizerID;


--- View 2: Participants and Their Event Bookings
CREATE VIEW View_ParticipantBookings AS
SELECT P.ParticipantID, P.FirstName, P.LastName, E.EventName, T.TicketType, T.PurchaseDate
FROM Ticket T
JOIN Participant P ON T.ParticipantID = P.ParticipantID
JOIN Event E ON T.EventID = E.EventID;
