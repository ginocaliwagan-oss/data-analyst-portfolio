# 👋 Hi, I'm Gino

A working professional transitioning into data analytics, with hands-on experience in data cleaning, reporting, and business intelligence.

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|---|---|
| SQL (MySQL) | Data cleaning, querying, aggregations, views |
| Excel | Data analysis, pivot tables, reporting |
| Power BI | Dashboards and data visualization |


## 📊 Project Overview

This project analyzes customer support ticket data to understand workload distribution, channel performance, and customer behavior across channels and segments.

The goal is to simulate a real-world data analytics workflow using:
SQL → Excel → Power BI

This repository focuses on the SQL phase, including data cleaning, KPI generation, and performance analysis.

---

## 📁 Projects

### 1. Customer Support Performance Analysis (SQL)
**Folder:** `/sql`


Cleaned and standardized messy ticket status data from a helpdesk system without modifying the original dataset.

**What I did:**
- Cleaned and standardized ticket status data using `CASE WHEN` and SQL views
- Built KPI summaries for ticket volume and status distribution
- Analyzed ticket volume by channel and customer segment
- Calculated closure rates to evaluate channel performance
- Measured each channel’s contribution to total resolved tickets
- Performed multi-dimensional analysis (segment + channel + performance)

## 🔍 Key Insight

**High volume does not equal high performance.**

Out of 1,500 total tickets, 889 were successfully closed. The Mobile App channel generated the highest volume of tickets (234), indicating strong support demand. However, it does not have the highest resolution rate.

In contrast, the Phone channel demonstrates higher closure efficiency relative to its volume. This suggests that while the Mobile App channel carries the largest workload, it may also be a potential bottleneck where resolution efficiency can be improved.

**Skills used:**
- SQL Views (`CREATE VIEW`)
- Data Transformation (`CASE WHEN`)
- Joins (`INNER JOIN`)
- Aggregation (`GROUP BY`, `COUNT`)
- Conditional Aggregation
- Percentage Calculations (closure rates)

## 🗂️ SQL Analysis Coverage

This project includes structured SQL queries covering:

- Data cleaning and transformation
- KPI summary (total, open, closed, pending tickets)
- Ticket distribution by status and channel
- Channel performance analysis (closure rates)
- Closed ticket contribution by channel
- Customer segment analysis
- Multi-dimensional analysis (segment + channel performance)

## ▶️ How to Explore

- Browse `/sql` for step-by-step queries
- Each file includes description, logic, and business use

---

## 📬 Contact

- 📧 Email: ginocaliwagan@gmail.com
- 💼 LinkedIn: https://www.linkedin.com/in/gino-caliwagan-clssyb-1a277959

---

*This portfolio is a work in progress — more projects coming soon!*
