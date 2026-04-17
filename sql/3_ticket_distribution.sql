-- Project: Customer Support Performance
-- Task: Ticket Distribution by Status
-- Description:
--     Displays the number of support tickets for each cleaned status category
--     (Open, Closed, Pending) to understand how workload is distributed.
--
-- Logic:
--     - Groups tickets by the standardized status field (status_cleaned)
--     - Uses COUNT(*) to calculate total tickets per category
--     - Orders results in descending order to highlight the highest volume first
--
-- Business Use:
--     Helps stakeholders identify the current workload mix and quickly see
--     which status category dominates (e.g., backlog vs resolved tickets).
--
-- Author: Gin
-- Date: 2026-04-17

SELECT 
	status_cleaned, 
	count(status_cleaned) AS Total 
FROM vw_cleaned_table
GROUP BY status_cleaned
ORDER BY total DESC
