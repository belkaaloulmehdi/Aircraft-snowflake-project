# Analysis Report – Aircraft Data Project

---

## 1. Introduction

This report presents the analysis of the `AIRCRAFT_DB` database carried out as part of my Data Analyst training at Jedha Bootcamp.  
The goal is to leverage data related to aircraft, airlines, airports, and flights to answer key business questions using SQL on the Snowflake cloud platform.

---

## 2. Context and Dataset

The dataset is provided as a complete SQL script that creates the following tables:  
- `aircraft`: information about aircraft models  
- `airlines`: airline companies  
- `airports`: airports and their characteristics  
- `flight_summary_data`: operational data per flight  
- `individual_flights`: detailed information for each flight  

Data is hosted on Snowflake, allowing efficient SQL processing.

---

## 3. Project Objectives

The main objectives are:  
- Identify the number of flights per aircraft model  
- Calculate the total number of passengers per airport  
- Determine the best year for RPM (Revenue Passenger Miles) per airline  
- Identify the best year for ASM (Available Seat Miles) per airline  
- Bonus: List the top 5 airlines by total RPM  

---

## 4. Methodology

- Create and load data in Snowflake using the provided SQL script  
- Write and execute SQL queries to answer the project questions  
- Export results in CSV format for further analysis  
- Capture screenshots in Snowflake interface for visual validation  

---

## 5. Key Results

### Q1 – Number of Flights per Aircraft

The `g72` model is the most frequently used with 1008 recorded flights, followed by the `t10` with 553 flights. This highlights the popularity and usage frequency of aircraft types.

![Q1](screenshots/Q1.png)


### Q2 – Total Passengers per Airport

`Flocktopia (FKT)` airport hosted the highest number of passengers, with over 430 million cumulative passengers, followed by `Nestland Airport (NSA)` with about 179 million. These figures include domestic and international passengers.

![Q2](screenshots/Q2.png)


### Q3 – Best Year in RPM per Airline

Amazon Airlines recorded its best year in 2015 with approximately 9.17 million RPM. Flock Air and Goose Airways peaked in 2016, with 13.4M and 3.46M RPM respectively.

![Q3](screenshots/Q3.png)


### Q4 – Best Year in ASM per Airline

Amazon Airlines reached an average ASM of 315,931 in 2002, while Flock Air and Goose Airways experienced their best years in 2016, with average ASMs of 427,255 and 1,100,639 respectively.

![Q4](screenshots/Q4.png)


### Bonus – Top 5 Airlines by Total RPM

Amazon Airlines leads the ranking of airlines by total RPM, confirming its dominant market position.

![Q5](screenshots/Q5.png)

---

## 6. Conclusion

The analysis demonstrates solid mastery of aeronautical data and provides insights into aircraft usage, passenger load per airport, and airline performance over several years.  
This project highlights the ability to handle complex databases in a cloud environment and extract relevant business intelligence through SQL.

---
