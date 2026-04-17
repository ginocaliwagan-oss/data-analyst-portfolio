# 👋 Hi, I'm Gino

A working professional transitioning into data analytics, with hands-on experience in data cleaning, reporting, and business intelligence.

---

## 🛠️ Tools & Technologies

| Tool | Usage |
|---|---|
| SQL (MySQL) | Data cleaning, querying, aggregations, views |
| Excel | Data analysis, pivot tables, reporting |
| Power BI | Dashboards and data visualization |

---

## 📁 Projects

### 1. 🧹 Ticket Status Data Cleaning (SQL)
**Folder:** `ticket-status-cleaning/`

Cleaned and standardized messy ticket status data from a helpdesk system without modifying the original dataset.

**What I did:**
- Identified inconsistent status values (e.g. `In Progress`, `Escalated`, `Pending Customer`, `Resolved`)
- Mapped raw statuses to business labels (`Open`, `Closed`, `Pending`) using `CASE WHEN`
- Created a SQL View to preserve the original data while exposing a clean version
- Built a summary query returning total, open, closed, and pending ticket counts in one row

**Skills used:** `CREATE VIEW`, `CASE WHEN`, `GROUP BY`, `COUNT`, `UNION ALL`, conditional aggregation

## Key Insight

There were a total of 1,500 tickets logged during this period, with 889 successfully closed. The Mobile App channel generated the highest number of tickets (234), indicating strong support demand. However, despite this high volume, it does not have the highest resolution rate.

In contrast, the Phone channel shows a higher percentage of closed tickets relative to its volume, suggesting more efficient handling. This indicates that while the Mobile App channel carries the largest workload, it may also be a potential bottleneck where resolution efficiency can be improved.


---

## 📬 Contact

- 📧 Email: ginocaliwagan@gmail.com
- 💼 LinkedIn: www.linkedin.com/in/gino-caliwagan-clssyb-1a277959

---

*This portfolio is a work in progress — more projects coming soon!*
