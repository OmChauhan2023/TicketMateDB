import mysql.connector
from mysql.connector import Error

def create_connection():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",  
            password="root",  
            database="dbms"
        )
        if connection.is_connected():
            print("Successfully connected to the database")
        return connection
    except Error as e:
        print(f"Error: {e}")
        return None

# Create a new participant using the AddParticipant stored procedure
def add_participant(connection, first_name, last_name, email, phone_number):
    try:
        cursor = connection.cursor()
        cursor.callproc('AddParticipant', [first_name, last_name, email, phone_number])
        connection.commit()
        print(f"Participant {first_name} {last_name} added successfully.")
    except Error as e:
        print(f"Error: {e}")

# Book a ticket using the BookTicket stored procedure
def book_ticket(connection, participant_id, event_id, ticket_type, price, purchase_date):
    try:
        cursor = connection.cursor()
        
        # First, check if the participant and event exist
        cursor.execute(f"SELECT * FROM Participant WHERE ParticipantID = {participant_id}")
        participant = cursor.fetchone()
        if not participant:
            print(f"No participant found with ID {participant_id}")
            return

        cursor.execute(f"SELECT * FROM Event WHERE EventID = {event_id}")
        event = cursor.fetchone()
        if not event:
            print(f"No event found with ID {event_id}")
            return
        
        # Now proceed to insert the ticket
        cursor.execute("""
            INSERT INTO Ticket (TicketType, Price, EventID, ParticipantID, PurchaseDate)
            VALUES (%s, %s, %s, %s, %s)
        """, (ticket_type, price, event_id, participant_id, purchase_date))
        
        connection.commit()
        print(f"Ticket booked successfully for Participant {participant_id} for Event {event_id}.")
    except Error as e:
        print(f"Error: {e}")

# Query View 1: Get all events for a specific organizer
def get_events_by_organizer(connection, organizer_id):
    try:
        cursor = connection.cursor()
        query = """
            SELECT E.EventID, E.EventName, E.EventDate, E.StartTime, E.EndTime, 
                   V.VenueName, O.FirstName AS OrganizerFirstName, O.LastName AS OrganizerLastName
            FROM Event E
            JOIN Venue V ON E.VenueID = V.VenueID
            JOIN Organizer O ON E.OrganizerID = O.OrganizerID
            WHERE O.OrganizerID = %s
        """
        cursor.execute(query, (organizer_id,))
        results = cursor.fetchall()
        for row in results:
            print(row)
    except Error as e:
        print(f"Error: {e}")


# Query View 2: Get all participant bookings
def get_participant_bookings(connection):
    try:
        cursor = connection.cursor()
        cursor.execute("SELECT * FROM View_ParticipantBookings;")
        results = cursor.fetchall()
        for row in results:
            print(row)
    except Error as e:
        print(f"Error: {e}")

# Main function to demonstrate the functionality
def main():
    connection = create_connection()
    
    if connection:
        add_participant(connection, "Om", "Chauhan", "omchauhan92005@gmail.com", "1234567890")
        add_participant(connection, "anand", "tiwari", "omchauhan92005@gmail.com", "1234567890")
        
        book_ticket(connection, 1, 101, "VIP", 100.00, "2024-11-17")
        
        print("Events by Organizer:")
        get_events_by_organizer(connection, 1)
        
        print("Participant Bookings:")
        get_participant_bookings(connection)
        
        connection.close()

if __name__ == '__main__':
    main()


















# # Connect to MySQL Database
# connection = mysql.connector.connect(
#     host="localhost",
#     user="root",  
#     password="root",  
#     database="dbms" 
# )

# cursor = connection.cursor()

# # Execute a query to fetch all events
# cursor.execute("SELECT EventName, EventDate, VenueID FROM Event")

# # Fetch and display the results
# events = cursor.fetchall()

# for event in events:
#     print(f"Event Name: {event[0]}, Event Date: {event[1]}, Venue ID: {event[2]}")

# # Close the connection
# cursor.close()
# connection.close()