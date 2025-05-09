-- Inserting sample Users

INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('uuid-user-1', 'Kehinde', 'Damilola', 'dafaladexy@gmail.com', 'hashed_pwd1', '8167488206', 'host', DEFAULT),
    ('uuid-user-2', 'Taiwo', 'Falade', 'tylexy@gmail.com', 'hashed_pwd2', '8164656855', 'guest', DEFAULT),
    ('uuid-user-3', 'Funmi', 'Falade', 'funmilayo@gmail.com', 'hashed_pwd3', '8100346891', 'guest', DEFAULT);


-- Inserting sample properties

INSERT INTO Property (Property_id, host_id, name, description, location, price_per_hour, created_at, updated_at)
VALUES
    ('uuid-prop-1', 'uuid-User-1', 'Mohit', 'Hotel and Suite', 'Abule-Egba, Lagos', '5000.00', 'DEFAULT', CURRENT_TIMESTAMP),
    ('uuid-prop-2', 'uuid-User-3', 'Soulmate', 'Hotel, Loung and club', 'Ikeja, Lagos', '1000.00', 'DEFAULT', CURRENT_TIMESTAMP);


-- Inserting sample bookings

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('uuid-book-1', 'uuid-prop-1', 'uuid-User', '2025-05-09', '2025-05-10', '50000.00', 'confirmed', DEFAULT),
    ('uuid-book-2', 'uuid-prop-2', 'uuid-User-3', '2025-05-10', '2025-05-12', '5000.00', 'pending', DEFAULT);


-- Inserting sample payment

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('uuid-pay-1', 'uuid-book-1', '50000.00', '2025-05-09', 'credit_card'),
    ('uuid-pay-2', 'uuid-book-2', '5000.00', '2025-05-10', 'paypal');


-- Inserting sample reviews

INSERT INTO Review (review_id, Property_id, user_id, rating, comment, created_at)
VALUES
    ('uuid-rev-1', 'uuid-prop-1', 'uuid-User-1', 'Good Hospitality', DEFAULT),
    ('uuid-rev-2', 'uuid-prop-2', 'uuid-User-3', 'Very clean and standard', DEFAULT);


-- Inserting sample message

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('uuid-msg-1', 'uuid-User-1', 'uuid-User-2', 'Hi Kehinde', 'Mohit is very standard', DEFAULT),
    ('uuid-msg-1', 'uuid-User-2', 'uuid-User-1', 'Hello! Taiwo', 'Soulmate is beautiful for your weekend', DEFAULT);
