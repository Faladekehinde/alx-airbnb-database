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

* "How many bookings did this user make?"

* If the answer is more than 3, we show that user.

* This is a correlated subquery, because the mini-question depends on the outer user (u.user_id).



# 📊 Aggregations and Window Functions in SQL

## 🎯 Objective

The goal of this task is to understand how **SQL aggregation functions** (like `COUNT`) and **window functions** (like `ROW_NUMBER`, `RANK`) are used to analyze and rank data in a relational database.

This practice was done using a booking system database that includes tables such as `User`, `Booking`, and `Property`.

---

## 🧠 What I Learned

- How to use **`GROUP BY`** and aggregation functions like `COUNT()` to summarize data.
- How to use **window functions** like `ROW_NUMBER()` and `RANK()` to rank records within partitions of data.
- How to structure queries in **MySQL 8.0+** to analyze booking and property data efficiently.

---

## 📌 Tasks and Solutions

### ✅ 1. Total Number of Bookings Made by Each User

**Description:**  
Count how many bookings each user has made.

## 🧾 Explanation:

* COUNT(*) counts how many rows (bookings) each user made.

* GROUP BY user_id groups all bookings by each user.


### ✅ 2. Rank Properties Based on Total Number of Bookings (Using ROW_NUMBER())

Description:
Rank each property based on how many times it has been booked, from highest to lowest.

## 🧾 Explanation:

* The inner query (booking_summary) counts how many bookings each property received.

* The outer query applies ROW_NUMBER() to rank the properties based on total bookings.

* ROW_NUMBER() gives a unique rank to each property (even if there are ties).

