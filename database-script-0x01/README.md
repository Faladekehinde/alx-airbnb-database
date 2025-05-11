## AirBnb Clone Database Schema

This project defines and establish the relational database schema for an AirBnb Clone. The schema includes users, properties, bookings, payments, reviews, and messages between users.

## 📦 Overview

This database is designed using the principles of Third Normal Form (3NF) to ensure data integrity, reduce redundancy, and support scalability of the database.

## The platform supports:

- User registration with roles (guest, host, admin)
- Hosts listing properties
- Guests booking properties
- Users leaving reviews
- Messaging between users
- Payment tracking

## Entity-Relationship Model

# Table	Description
* users	Stores information about platform users
* properties	Stores listings created by hosts
* bookings	Links users to properties with timeframes
* payments	Tracks payment details for bookings
* reviews	Allows users to leave reviews on properties
* messages	Manages user-to-user messagesl