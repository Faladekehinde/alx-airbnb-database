-- Creating parent partitioned table

CREATE TABLE Booking_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20),
    payment_id INT
) PARTITION BY RANGE(start_date);

-- Creating partition by day. ex: 2025-05-09 and 2025-05-10

CREATE TABLE Booking_2024 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2025-05-09') TO ('2025-05-10');

-- Test the performance of queries on the partitioned table (e.g., fetching bookings by date range).

EXPLAIN ANALYZE
SELECT * FROM Booking_partitioned
WHERE start_date BETWEEN '2025-05-10' AND '2025-05-12';