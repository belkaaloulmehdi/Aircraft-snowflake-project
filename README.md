# Aircraft Data Analysis Project

## 📌 Project Overview

This project aims to analyze an aircraft database using SQL on Snowflake, a cloud data platform.  
The objective is to answer key business questions regarding flights, passenger traffic, and airline performance using SQL queries on a comprehensive dataset.

---

## 📜 Dataset & Context

The dataset is provided as a full SQL script that creates the database `AIRCRAFT_DB` with all necessary tables (`aircraft`, `airlines`, `airports`, `flight_summary_data`, `individual_flights`) and populates them with data.  
This project was completed as part of my Data Analyst training at Jedha Bootcamp.

---

## 📂 Project Structure
```
aircraft-data-analysis
│── create_and_load_tables.sql   # SQL script to create tables and insert data
│── analysis_queries.sql         # SQL queries answering project questions
│── README.md                   # This project documentation
│── /screenshots                # Screenshots of query results in Snowflake
│── /results                    # CSV exports of query results
```
---

## 🔧 Usage Instructions

1. **Clone the repository:**
```bash
git clone https://github.com/belkaaloulmehdi/aircraft-data-analysis.git
cd aircraft-data-analysis
```
2. **Load the data in Snowflake** by executing create_and_load_tables.sql
3. **Run the SQL queries** from analysis_queries.sql to reproduce the analysis.
4.	**Check the /results folder** for CSV exports of query results.
5.	**Review the /screenshots folder** for visual confirmation of query outputs.

---

## 📊 Key Insights  
- Number of flights per aircraft model.  
- Total passengers per airport.  
- Best year for RPM and ASM metrics per airline.  
- Top 5 airlines by RPM total.

## 🗂️ Results and Visual Proof  
- **CSV files** in `/results` contain raw exported query results for detailed analysis.  
- **Screenshots** in `/screenshots` display results directly from Snowflake for proof of execution.

## 🤝 Contributing  
Feel free to fork and submit pull requests for improvements.

## 📜 License  
Open-source under the [MIT License](LICENSE).

## 📌 Author  
**Marouan Mehdi Belkaaloul** – Data Analyst trainee at Jedha Bootcamp
