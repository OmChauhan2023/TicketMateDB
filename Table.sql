
SHOW DATABASES ;

USE dbms ; 

-- 1. Venue Table
CREATE TABLE Venue (
    VenueID INT PRIMARY KEY,
    VenueName VARCHAR(255),
    Location VARCHAR(255),
    Capacity INT,
    ContactInfo VARCHAR(255)
);

-- 2. Organizer Table
CREATE TABLE Organizer (
    OrganizerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    OrganizationName VARCHAR(255)
);

-- 3. Event Table
CREATE TABLE Event (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(255),
    EventDate DATE,
    StartTime TIME,
    EndTime TIME,
    VenueID INT,
    OrganizerID INT,
    Description TEXT,
    FOREIGN KEY (VenueID) REFERENCES Venue(VenueID),
    FOREIGN KEY (OrganizerID) REFERENCES Organizer(OrganizerID)
);

-- 4. Participant Table
CREATE TABLE Participant (
    ParticipantID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

-- 5. Ticket Table
CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY,
    TicketType VARCHAR(50),
    Price DECIMAL(10, 2),
    EventID INT,
    ParticipantID INT,
    PurchaseDate DATE,
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (ParticipantID) REFERENCES Participant(ParticipantID)
);
