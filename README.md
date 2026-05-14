# 👋 Hi, I'm Gino

A working professional transitioning into data analytics, with hands-on experience in data cleaning, reporting, and business intelligence.

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|---|---|
| SQL (MySQL) | Data cleaning, querying, aggregations, views |
| Excel | Data validation, cleaning, pivot tables, reporting |
| Power BI | Dashboards and data visualization |


## 📊 Project Overview

This project analyzes customer support ticket data to understand workload distribution, operational performance, and customer behavior across channels, segments, and time.

The goal is to simulate a real-world data analytics workflow:
SQL → Excel (validation) → Power BI (visualization)

This repository currently focuses on SQL analysis and Excel-based data validation, including data cleaning, KPI generation, exploratory analysis, and performance reporting.

---

## 📁 Projects

### Dataset Scope
- 1,500 support tickets
- Multiple customer segments and support channels
- Includes ticket statuses, response metrics, issue types, and timestamps

### 1. Customer Support Performance Analysis (SQL)
**Folder:** `/sql`

Cleaned and standardized inconsistent ticket status data from a helpdesk system without modifying the original dataset.

**What I did:**
- Built KPI summaries for ticket volume and status distribution
- Analyzed ticket volume by channel and customer segment
- Calculated closure rates to evaluate channel performance
- Measured each channel’s contribution to total resolved tickets
- Performed multi-dimensional analysis (segment + channel + performance)

## 📊 Advanced SQL Analysis (Tasks 11–15)
- **Segment Ticket Status Breakdown**  
  Compared ticket distribution across customer segments to identify workload and resolution patterns
  
- **Open Ticket Aging Analysis**  
  Measured how long tickets remain unresolved using DATEDIFF and aging buckets
  
- **Response Time Distribution**  
  Evaluated support responsiveness by categorizing tickets into response speed groups
  
- **Issue Type Analysis**  
  Identified key drivers of support demand and calculated each issue type’s contribution to total tickets
  
- **Time-Based Trend Analysis (Monthly & Quarterly)**  
  Analyzed ticket volume trends over time using DATE_FORMAT, YEAR, and QUARTER

## 🔍 Key Insight

**High volume does not equal high performance.**

Out of 1,500 total tickets, 889 were successfully closed. The Mobile App channel generated the highest volume of tickets (234), indicating strong support demand. However, it does not have the highest resolution rate.

In contrast, the Phone channel demonstrates higher closure efficiency relative to its volume. This suggests that while the Mobile App channel carries the largest workload, it may also be a potential bottleneck where resolution efficiency can be improved.

Additional analysis shows that ticket volume is distributed across multiple issue types and time periods, indicating that support demand is influenced by several operational factors rather than a single dominant driver.

**Skills used:**
- Data Cleaning & Transformation (CASE WHEN, Views)
- Data Aggregation (GROUP BY, COUNT)
- Conditional Aggregation (Pivot-style reporting)
- Joins (INNER JOIN)
- Time-Based Analysis (DATE_FORMAT, YEAR, QUARTER)
- Performance Metrics (closure rates, percentages)
- Handling Missing Data (COALESCE, NULL logic)
- Multi-dimensional Analysis (segment, channel, time)

## 🗂️ SQL Analysis Coverage

This project includes structured SQL queries covering:

- Data cleaning and transformation
- KPI summary (total, open, closed, pending tickets)
- Ticket distribution by status and channel
- Channel performance analysis (closure rates)
- Closed ticket contribution by channel
- Customer segment analysis
- Multi-dimensional analysis (segment + channel performance)
- Response time and aging analysis
- Issue type contribution
- Time-based trend analysis (monthly and quarterly)

## 🧹 Data Validation & Preparation

Before building reports and dashboards, the dataset was validated and cleaned using Excel to ensure consistency and reliability.

### Validation Steps Performed
- Imported and structured the dataset into Excel Tables
- Identified missing values using `COUNTBLANK()`
- Investigated blank `order_id`, `closed_at`, and `resolution_minutes` fields
- Verified `ticket_id` uniqueness using Conditional Formatting
- Used `CLEAN()` and `TRIM()` to validate text consistency
- Assessed whether missing values were operationally valid or potential data quality issues

### Key Findings
- Blank `closed_at` and `resolution_minutes` values aligned with unresolved tickets
- No duplicate `ticket_id` values were identified
- Missing `order_id` values appeared across all statuses and issue types, suggesting order references may not be mandatory for all support interactions

## ▶️ How to Explore

- Browse `/sql` for step-by-step queries
- `/excel` contains validation and exploratory analysis work
- Each file includes description, logic, and business use

---

## 📬 Contact

- 📧 Email: ginocaliwagan@gmail.com
- 💼 LinkedIn: https://www.linkedin.com/in/gino-caliwagan-clssyb-1a277959

---

*This portfolio is a work in progress — more projects coming soon!*
