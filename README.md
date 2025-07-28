<!-- 
README.md 
TicketMateDB - Event Management System (EMS) - DBMS Mini Project
Developed with Python, MySQL, and supporting libraries
CS203 DATABASE MANAGEMENT SYSTEM PROJECT, SVNIT SURAT
-->

<h1 align="center">🎟️ TicketMateDB</h1>
<p align="center">
Event Management System (EMS) &nbsp;|&nbsp; Developed with 🐍 Python & 🐬 MySQL  
<br/>
<span style="font-weight: bold;">Database Management System (CS203) , SVNIT SURAT</span>
</p>

<p align="center">
<img src="https://img.shields.io/badge/Python-3.10+-blue?logo=python" alt="Python"/>
<img src="https://img.shields.io/badge/MySQL-8+-orange?logo=mysql" alt="MySQL"/>
<img src="https://img.shields.io/badge/DBMS-MiniProject-lightgrey" alt="DBMS Project"/>
</p>

---

## ✨ Project Overview

Welcome to **TicketMateDB**, an event management system designed as a DBMS mini project.  
This system efficiently manages events such as conferences, workshops, concerts, and parties. It allows users to register for events, book tickets with seat capacity checks, manage venues and organizers, and track participant bookings — all via a MySQL-backed relational database, enhanced with Python automation.

---

## 🌟 Features

### 🎫 Event & Ticket Management  
- Create and organize multiple events with detailed attributes (name, date, time, venue, organizer).  
- Book tickets with customizable types (e.g., VIP, General Admission) and pricing.  
- Automatically enforce event capacity limits and prevent overbooking through database triggers.

### 🏟 Venue & Organizer Handling  
- Manage venue details including capacity, location, and contact info.  
- Track event organizers and their affiliated organizations.

### 👥 Participant Registration  
- Secure and straightforward participant registration handled by stored procedures.

### 📊 Data Reporting with SQL Views  
- Organized views provide easy retrieval of events by organizer and participant ticket bookings.

### 🤖 Python Automation  
- Python scripts connect to the MySQL database to automate participant addition, ticket booking, and querying event or booking data.

---

## 🛠️ Tech Stack & Components

- **Python 3.10+** for backend logic and interface  
- **MySQL 8+** as the relational database system  
- **`mysql-connector-python`** for Python-MySQL integration  

---

## 🗂 Database Design

### Entities & Key Attributes

- **Event:** EventID, EventName, EventDate, StartTime, EndTime, VenueID (FK), OrganizerID (FK), Description  
- **Venue:** VenueID, VenueName, Location, Capacity, ContactInfo  
- **Participant:** ParticipantID, FirstName, LastName, Email, PhoneNumber  
- **Ticket:** TicketID, TicketType, Price, EventID (FK), ParticipantID (FK), PurchaseDate  
- **Organizer:** OrganizerID, FirstName, LastName, Email, PhoneNumber, OrganizationName  

### Key Relationships

- One organizer can manage many events.  
- One venue can host many events, but each event occurs at one venue.  
- Participants and events relate many-to-many through tickets.

---

## 🧾 Highlights of Database Implementation

### SQL Tables & Relationships  
Tables employ primary and foreign keys to enforce entity relationships and data integrity.

### Views for Simplified Reporting  
- Events organized by each organizer.  
- Participants and their ticket bookings.

### Stored Procedures  
- Add new participants.  
- Book tickets securely for events with participant and event verification.

### Triggers  
- Prevent ticket booking if event capacity is reached (sold-out).  
- Clean up tickets automatically if an event is deleted.

---

## 🐍 What the Python Code Does

- Establishes and manages connections to the MySQL database.  
- Automates participant registration using stored procedures.  
- Checks for valid participants and events before booking tickets.  
- Retrieves data from views to display events by organizer and participant bookings.  
- Demonstrates full program workflow: participant addition, ticket booking, and data display.

---

## 📸 Screenshots

### *ER Diagram*
![EMS](https://github.com/user-attachments/assets/837e55f6-ef36-44fa-a3d0-2e38b51ac352)

### *Relational Model*
![Relational Model](https://github.com/user-attachments/assets/01abd61b-ad09-44af-a9e7-5a7d673302c8)

---

## 👨‍💻 Author

**Om Chauhan**  
[[GitHub]](https://github.com/OmChauhan2023/)

---

## 🙏 Acknowledgments

- Developed as a DBMS mini project for a Computer Science core subject.  
- Inspired by real-world event and ticket management system needs.

---

*For questions, feedback, or contributions, please open an issue or pull request on GitHub!*
