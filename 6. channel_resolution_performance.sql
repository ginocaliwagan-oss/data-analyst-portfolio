-- Project: Customer Support Performance
-- Task: Channel Resolution Performance Analysis
-- Description:
--     Measures the closure rate of support tickets within each channel.
--     This shows how effectively each channel resolves its own ticket volume.
--
-- Logic:
--     - Groups records by channel
--     - Counts total tickets per channel
--     - Counts closed tickets per channel using conditional aggregation
--     - Divides closed tickets by total tickets in the same channel
--     - Multiplies by 100 and rounds to 2 decimal places
--
-- Business Use:
--     Helps identify which channels are resolving tickets efficiently
--     and which channels may need process improvement or additional support.
--
-- Author: Gin
-- Date: 2026-04-17

SELECT 
	channel,
	COUNT(*) AS Total_tickets, 
	ROUND(
		COUNT(CASE WHEN status_cleaned = 'Closed' THEN 1 END) * 100.0 / COUNT(*), 2) AS percentage
FROM vw_cleaned_table
GROUP BY channel
ORDER BY percentage DESC