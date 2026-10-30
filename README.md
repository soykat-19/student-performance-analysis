# Student Performance Analysis using MySQL

## Project Overview
This project analyzes the academic performance of students across different courses using MySQL. It uses SQL queries to calculate student averages, compare course performance, identify toppers, and analyze pass/fail records.

## Database Structure
The project contains three tables:
- **students:** Stores student details.
- **courses:** Stores course information.
- **enrollments:** Stores marks and connects students with courses.

## Tools Used
- MySQL
- MySQL Workbench

## SQL Concepts Used
- Database and table creation
- Primary and foreign keys
- INSERT statements
- JOIN operations
- GROUP BY and aggregate functions
- Subqueries
- RANK() window function
- Filtering and sorting

## Project Structure
```text
student-performance-analysis/
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_insert_data.sql
│   └── 03_analysis_queries.sql
│
├── results/
│   └── key_findings.md
│
└── README.md
```

## Key Results
- Total students analyzed: 8
- Total courses: 4
- Total records: 32
- Class average: 75.41
- Overall pass percentage: 90.63%
- Highest-performing student: Ananya Roy

## Note
This project uses fictional sample data for learning and demonstration purposes.