### 🧩 SQL Joins Task 

📌 **Goal:**
I want to **connect different tables** in a database — kind of like putting puzzle pieces together so I can see the **full picture**!

🧠 **What I Did:**
I used the **three types of joins** in SQL. I used these joins to link different parts of a booking system, like:

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



##  SQL Subqueries Task

# 📌 Objective

The goal of this task is to practice writing both correlated and non-correlated SQL subqueries using real-world scenarios from a property booking system.

# 🧠 What I Did
  * I wrote two types of subqueries:

## ✅ 1.Non-Correlated Subquery

# 🧠 "Find all properties where the average rating is more than 4.0"

Imagine you're looking through hotels and only want to see the ones people gave more than 4 stars on average.

## sql
SELECT * 
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0

# 🧾 What’s going on?

The mini-question inside () says:

"Give me property IDs that have an average rating over 4"

The big question says:

"Show me all the properties where the ID is in that list"

That’s a non-correlated subquery, because the little query doesn’t need anything from the big one.


## ✅ 2. Correlated Subquery:

# 🧠 "Find users who have made more than 3 bookings"
This is like saying:

“Go through each user and check how many bookings they made.”

We’ll need a mini-question that depends on the user we’re looking at.

# sql
SELECT * 
FROM User u
WHERE (
    SELECT COUNT(*) 
    FROM Booking b 
    WHERE b.user_id = u.user_id
) > 3;

# 🧾 What’s going on here?

For each user, we ask:

"How many bookings did this user make?"

If the answer is more than 3, we show that user.

This is a correlated subquery, because the mini-question depends on the outer user (u.user_id).
