### 🧩 SQL Joins Task – What I Learned!

📌 **Goal:**
I want to **connect different tables** in a database — kind of like putting puzzle pieces together so I can see the **full picture**!

🧠 **What I Did:**
I learned how to use **three types of joins** in SQL. I used these joins to link different parts of a booking system, like:

* People who book places 🧍
* The properties they book 🏡
* And the payments they make 💳

Each type of **join** helped me answer different questions by combining the right pieces of information from different tables.

## Join Queries

### INNER JOIN: Bookings and Users
Retrieves all bookings and the respective users who made them.

### LEFT JOIN: Properties and Reviews
Retrieves all properties and their reviews, including properties without any reviews.

### FULL OUTER JOIN: Users and Bookings
Retrieves all users and all bookings, including users without bookings and bookings not linked to any user.

## 🔗 SQL Join Summary Table

| Join Type        | What It Shows                                           |
|------------------|---------------------------------------------------------|
| INNER JOIN       | Records with matches in both tables                     |
| LEFT JOIN        | All left table records, and matches from the right      |
| FULL OUTER JOIN  | All records from both tables, matched or not            |

