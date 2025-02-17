# OLA Data Analyst Project

This project involves analyzing and visualizing booking data from the OLA platform, including various metrics like ride status, vehicle types, customer and driver behavior, and more. The project demonstrates a comprehensive approach to data analytics, using SQL for data retrieval and Power BI for visualization.

## Table of Contents
- [Project Overview](#project-overview)
- [Data Description](#data-description)
- [Objectives](#objectives)
- [Technologies Used](#technologies-used)
- [SQL Queries](#sql-queries)
- [Power BI Dashboards](#power-bi-dashboards)
- [Conclusion](#conclusion)

## Project Overview
The OLA Data Analyst project aims to generate insights from booking data collected over one month for Bengaluru city. It covers booking statuses, vehicle types, ride distances, customer and driver ratings, cancellations, and incomplete rides. The data includes a mix of successful and canceled rides, with a focus on weekend and match-day trends.

## Data Description
The dataset consists of the following columns:
1. Date
2. Time
3. Booking ID
4. Booking Status (e.g., success, canceled)
5. Customer ID
6. Vehicle Type (e.g., Auto, Prime Sedan, Bike)
7. Pickup and Drop Locations
8. VTAT (Vehicle Time to Arrival)
9. CTAT (Customer Time to Arrival)
10. Cancellation Reasons (Customer and Driver)
11. Incomplete Rides Reasons
12. Booking Value
13. Ride Distance
14. Driver and Customer Ratings

The dataset reflects realistic booking scenarios with various constraints and trends, such as higher order values on weekends and fewer incomplete rides.

## Objectives
1. Analyze booking data to identify trends and patterns.
2. Generate insights on customer and driver behavior.
3. Visualize key metrics using SQL queries and Power BI dashboards.
4. Answer key business questions using data, such as:
   - Average ride distance per vehicle type.
   - Most common reasons for cancellations.
   - Top 5 customers by total bookings.

## Technologies Used
- **SQL**: For querying and analyzing the booking data.
- **Power BI**: For creating visual dashboards and reports.
- **Excel/CSV**: For managing raw data.

## SQL Queries
Some key SQL queries used in this project include:
1. **Retrieve all successful bookings**:
   ```sql
   SELECT * FROM bookings WHERE Booking_Status = 'Success';
   ```
2. **Find the average ride distance for each vehicle type**:
   ```sql
   SELECT Vehicle_Type, AVG(Ride_Distance) as avg_distance FROM bookings GROUP BY Vehicle_Type;
   ```
3. **Get the total number of rides canceled by customers**:
   ```sql
   SELECT COUNT(*) FROM bookings WHERE Booking_Status = 'Cancelled by Customer';
   ```
4. **Top 5 customers by number of rides**:
   ```sql
   SELECT Customer_ID, COUNT(Booking_ID) as total_rides FROM bookings GROUP BY Customer_ID ORDER BY total_rides DESC LIMIT 5;
   ```

## Power BI Dashboards
The Power BI visualizations provide insights into various aspects of the booking data, including:
1. **Ride Volume Over Time**: A time-series chart showing ride volume by date.
2. **Booking Status Breakdown**: A breakdown of booking statuses (e.g., successful, canceled).
3. **Top 5 Vehicle Types by Ride Distance**: A bar chart comparing vehicle types based on ride distance.
4. **Customer vs. Driver Ratings**: A scatter plot comparing ratings between customers and drivers.
5. **Revenue by Payment Method**: A visual breakdown of revenue generated through different payment methods.

## Conclusion
This project provides a comprehensive analysis of the OLA booking data, using SQL to query important metrics and Power BI to visualize trends. It gives insights into customer and driver behavior, ride cancellations, and vehicle performance, helping to improve decision-making processes in ride-sharing platforms.

