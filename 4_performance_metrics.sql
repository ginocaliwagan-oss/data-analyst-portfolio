-- Project: Customer Support Performance
-- Task: Overall Ticket Performance Metrics
-- Description:
--     Provides a high-level summary of support ticket performance by calculating
--     the total number of tickets along with the percentage of closed tickets
--     and the percentage of active tickets (Open + Pending).
--
-- Logic:
--     - Counts total tickets using COUNT(*)
--     - Uses conditional aggregation (CASE WHEN) to identify closed tickets
--     - Calculates the percentage of closed tickets relative to total volume
--     - Groups Open and Pending tickets as active workload
--     - Computes the percentage of active tickets relative to total volume
--     - Uses ROUND(..., 2) to format percentage values
--
-- Business Use:
--     Gives stakeholders a quick overview of overall support performance,
--     helping assess resolution efficiency and the size of the remaining workload.
--
-- Author: Gin
-- Date: 2026-04-18

SELECT 
	COUNT(*) AS Total_Tickets,
	ROUND(
		COUNT(CASE WHEN status_cleaned = 'Closed' THEN 1 END) * 100.0 / COUNT(*), 2) AS pct_closed,
	ROUND(
		COUNT(CASE WHEN status_cleaned IN ('Open','Pending')  THEN 1 END) * 100.0 / COUNT(*), 2) AS pct_open
 
FROM vw_cleaned_table;
