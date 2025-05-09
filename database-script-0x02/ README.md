
### 🌱 Sample Data Seeder

This **SQL script** populates the database with **realistic, structured sample data** to support application **testing**, **UI development**, and **demo environments**. The data reflects typical Airbnb-like interactions between users, properties, bookings, reviews, messages, and payments.

---

### 📁 Files Included

* **`seed.sql`**:
  A comprehensive script containing `INSERT` statements for each key table:

  * `users`: Sample guests, hosts, and admins with unique emails and roles.
  * `properties`: Listings hosted by sample users, including descriptions and locations.
  * `bookings`: Bookings associated with specific properties and users.
  * `payments`: Payment records linked to bookings, covering different payment methods.
  * `reviews`: Feedback from users on properties they’ve stayed in.
  * `messages`: Simulated conversations between guests and hosts.

---

### ⚙️ How to Use

To load the seed data into your local **PostgreSQL** or **MySQL** database:

```bash
psql -U <your_username> -d <your_database_name> -f seed.sql
```

📌 **Note:**
Ensure your database schema (tables and constraints) is already created **before** running the seed script. If you're using a framework like Sequelize, Prisma, or Laravel, run the migration step first.

---

### 🔄 Customization Tips
* Modify user roles and credentials to test different authorization levels.
* Adjust `booking` dates to simulate past, current, and upcoming reservations.
* Extend the script with additional records for load testing or analytics scenarios.
