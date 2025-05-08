### ✅ Database Normalization to Third Normal Form (3NF)

**🎯 Objective**
Ensure the relational database schema complies with **Third Normal Form (3NF)** to eliminate data redundancy, strengthen data integrity, and support long-term scalability.

---

### 🧱 Normalization Process

#### 1. **First Normal Form (1NF)**

* All columns store **atomic (indivisible) values**.
* No repeating groups or arrays exist.
* ✅ Example: `phone_number` in the `User` table is stored as a single `VARCHAR` value.

#### 2. **Second Normal Form (2NF)**

* Every non-key attribute is **fully dependent on the entire primary key**.
* Since each table uses a **single-column UUID as the primary key**, partial dependencies are avoided by design.

#### 3. **Third Normal Form (3NF)**

* All attributes are dependent **only on the primary key**.
* There are **no transitive dependencies** (no attribute depends on another non-key attribute).
* Each table describes a **single entity**, and all fields are directly related to that entity.

---

### ✅ Conclusion

The current database schema satisfies **Third Normal Form (3NF)** with no modifications required.

📌 **Future considerations:**

* Replace `ENUM` fields with **reference tables** for better flexibility and extensibility.
* Use **database views** to handle calculated values (e.g., booking duration or total revenue), rather than storing derived data directly.

---
