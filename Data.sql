

-- Inserting sample venues
INSERT INTO Venue (VenueID, VenueName, Location, Capacity, ContactInfo)
VALUES
(1, 'Conference Hall A', 'New York, NY', 500, 'contact@conferencehallA.com'),
(2, 'Expo Center B', 'Los Angeles, CA', 800, 'info@expocenterB.com'),
(3, 'Grand Auditorium', 'San Francisco, CA', 1000, 'support@grandauditorium.com'),
(4, 'City Convention Center', 'Chicago, IL', 1200, 'admin@cityconvention.com');


-- Inserting sample organizers
INSERT INTO Organizer (OrganizerID, FirstName, LastName, Email, PhoneNumber, OrganizationName)
VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '1234567890', 'Tech Events Inc.'),
(2, 'Emily', 'Johnson', 'emily.johnson@email.com', '2345678901', 'Future Innovations'),
(3, 'Michael', 'Smith', 'michael.smith@email.com', '3456789012', 'Global Tech Solutions'),
(4, 'Sarah', 'Williams', 'sarah.williams@email.com', '4567890123', 'Startup World');


-- Inserting sample events
INSERT INTO Event (EventID, EventName, EventDate, StartTime, EndTime, VenueID, OrganizerID, Description)
VALUES
(1, 'Tech Conference 2024', '2024-11-20', '09:00:00', '17:00:00', 1, 1, 'Annual tech conference showcasing the latest in technology.'),
(2, 'AI & Machine Learning Expo', '2024-12-05', '10:00:00', '18:00:00', 2, 2, 'An event focused on the latest trends in Artificial Intelligence and Machine Learning.'),
(3, 'Startup Summit 2024', '2024-11-25', '08:30:00', '16:30:00', 4, 4, 'A conference for startup founders and entrepreneurs to network and learn.'),
(4, 'Global Tech Forum', '2024-12-15', '11:00:00', '20:00:00', 3, 3, 'International event with tech leaders discussing global innovations in technology.');


-- Inserting sample participants
INSERT INTO Participant (ParticipantID, FirstName, LastName, Email, PhoneNumber)
VALUES
(1, 'Alice', 'Smith', 'alice.smith@email.com', '9876543210'),
(2, 'Bob', 'Brown', 'bob.brown@email.com', '8765432109'),
(3, 'Charlie', 'Davis', 'charlie.davis@email.com', '7654321098'),
(4, 'David', 'Martinez', 'david.martinez@email.com', '6543210987'),
(5, 'Eva', 'Wilson', 'eva.wilson@email.com', '5432109876');


-- Inserting sample tickets
INSERT INTO Ticket (TicketID, TicketType, Price, EventID, ParticipantID, PurchaseDate)
VALUES
(1, 'VIP', 150.00, 1, 1, '2024-10-01'),
(2, 'General Admission', 50.00, 1, 2, '2024-10-02'),
(3, 'VIP', 200.00, 2, 3, '2024-10-05'),
(4, 'Early Bird', 120.00, 3, 4, '2024-10-10'),
(5, 'General Admission', 80.00, 4, 5, '2024-10-12'),
(6, 'VIP', 180.00, 1, 3, '2024-10-15'),
(7, 'General Admission', 60.00, 2, 4, '2024-10-17'),
(8, 'VIP', 250.00, 3, 5, '2024-10-20');
