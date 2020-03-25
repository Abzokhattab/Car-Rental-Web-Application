note : this project was done in january 2020 . but i uploaded it to github in march.  
# Car-Rental-Web-Application
Database for managing the rental process , maintenance activities ,billing, and cost reporting Using SQL Server and ASP.NET using C# .

# Car Rental System 
Rental car companies need to keep track of their car fleet and customers. A good database system is
required to manage the rental process, maintenance activities, billing, and cost reporting. In this
project you are required to design a database for managing a small car rental company.

# Project Specification
A rental car company has a large car fleet. Each car has a particular brand, model, and class. A car can
be owned or leased by the rental company. A car can either have a diesel or a gasoline motor. Each car
is equipped with a tracking system that reports data back which includes the current mileage and the
GPS location of the car. After the car drives a particular number of kilometers, the car has to be sent
for maintenance and inspection. At any point of time, a car can be either rented, in maintenance, or
available.
In order to rent a car, a customer has to specify a particular class of interest (e.g., compact, medium,
large, extra large, etc.) and a time frame in which he would like to rent the car. Each car has an
associated daily rental rate. After choosing an available car, the customer has to decide for an
insurance scheme, provide his credit card details, and provide proof of his ownership of a driving
license. A car can then be picked up from one of the rental company locations at which it is parked.
Each location has many parking spots that are identified by a 4 digit number.
There are several types of insurances that can be selected by the customer: basic (included with the
daily rate), advanced, and premium. The basic coverage covers only damages caused by the driver of
the car in case of an accident, but does not cover damages on the rental. Advanced covers accidents
both caused by the driver as well as on the rental with a predefined liability amount (e.g., EUR 400).
The premium covers all kinds of damages without a liability amount. Each insurance scheme has an
associated daily rate that is separately charged to the customer.
The customer can also choose to rent extras like GPS or a baby seat. Each of these extras have its own
daily rate. The extras are delivered to the customer once he picks up the rental. During the pickup an
employee of the rental car company checks the car for existing damages, current mileage, and fuel
level. A report is written with all of the findings and is signed by the customer. Once a car is returned,
a similar report is filled. If a car is not returned with the same fuel level as delivered, then the rental
company has to fill the car up and charge the customer for fuel.
Damages and accidents to the car have to be documented. If the car is damaged during a rental period,
then it is sent to repair and a bill is issued to the insurance company and the customer depending on
the preselected insurance scheme. If the car is damaged outside a rental period, then the car is sent to
repair and a bill is sent to the company’s car insurance company. 
Once the car drove a certain number of miles or if the car needs repair, the car has to be sent to an
authorized dealer for carrying out maintenance or repair activities. During this period the car has to be
marked as unavailable for rental until it is back and parked at a location. Moreover, the license and
registration of the car has to be renewed on time. A car is not available for rental if it is undergoing
registration renewal.

# Helpful Resources
Car rental
https://en.wikipedia.org/wiki/Car_rental
Sixt (for inspiration purposes only)
www.sixt.de
Hertz (for inspiration purposes only)
www.hertz.de
