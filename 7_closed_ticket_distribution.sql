-- Project: Customer Support Performance
-- Task: Closed Ticket Distribution by Channel
-- Description:
--     Shows how much each support channel contributes to the total number
--     of resolved tickets across the business.
--
-- Logic:
--     - Filters the dataset to Closed tickets only
--     - Groups results by channel
--     - Counts closed tickets per channel
--     - Uses a subquery to calculate total closed tickets overall
--     - Computes each channel’s percentage contribution to all closed tickets
--
-- Business Use:
--     Helps stakeholders understand which channels contribute most to
--     completed support work and where resolved workload is concentrated.
--
-- Author: Gin
-- Date: 2026-04-17

SELECT 
	channel,
  	COUNT(*) as closed_tickets,
	ROUND (
		COUNT(*) * 100.0 / 	(
			SELECT COUNT(*) 
			FROM vw_cleaned_table
			WHERE status_cleaned = 'Closed'),2) AS pct_contribution

FROM vw_cleaned_table
WHERE status_cleaned = "Closed"
GROUP BY channel
ORDER BY pct_contribution DESC; 


