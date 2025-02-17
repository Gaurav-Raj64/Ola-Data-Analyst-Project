create database Ola;
use Ola;
#1.Retrieve all successfull bookings;
create view Sucessful_Booking as
select * from booking
where Booking_Status='Success';


#2. Find the average ride distance for each vehicle type;
create view ride_distance as
select Vehicle_Type, avg(Ride_Distance)
as avg_distance From booking
Group by Vehicle_type;
 

#3  sucessful_bookingsucessful_bookingsucessful_booking
create view canceled_ride_by_customer as
select count(*) from booking
where Booking_status = 'Canceled by customer'; 

#4 List top 5 customer who booked the highest number of rides;
create view Top_5_Customer as
select Customer_ID, count(Booking_ID) as total_rides
from booking
Group by Customer_id
order by total_rides desc limit 5; 

#5 Get the number of rides canceled by drivers due to personel and car related issues;
create view ride_cancel_by_customer as
select count(*) from booking
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6 Find the maximun and minimum driveer rating for prime sedan booking;
create view Max_Min_Driver_Rating as
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from booking where Vehicle_Type = 'Prime Sedan';

#7 Retrieve all rides where payment was made using UPI;
create view Payment_Using_UPI as
select * from booking
where Payment_Method = 'UPI';

#8 Find the average Customer Rating per vehicle type;
create view Avg_Customer_rating as
select Vehicle_Type ,Avg(Customer_Rating) as avg_customer_rating
from booking
group by Vehicle_Type;

#9 Calculate the toal booking value of rides completed Successfully;
create view total_booking_value as
Select sum(Booking_Value) as total_successful_value
from booking
where Booking_Status = 'Success';

#10 List all incomplete rides along with the reason:
create view Incomplete_Rides_with_Reason as
select Booking_ID , Incomplete_Rides_Reason 
from booking 
where Incomplete_Rides= 'Yes';
