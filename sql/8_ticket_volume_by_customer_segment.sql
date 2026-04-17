-- Project: Customer Support Performance
-- Task: Ticket Volume by Customer Segment (Ranked)
-- Description:
--     Analyzes and ranks customer segments based on total support ticket volume
--     to identify which segments generate the highest support demand.
--
-- Logic:
--     - Joins support_tickets with customer_master using customer_id
--     - Groups records by customer segment
--     - Counts total number of tickets per segment
--     - Sorts results from highest to lowest ticket volume
--
-- Business Use:
--     Helps stakeholders quickly identify the customer segments driving the
--     most support workload, enabling better prioritization, resource allocation,
--     and targeted service improvements.
--
-- Author: Gin
-- Date: 2026-04-18

SELECT
	cm.segment,
	COUNT(*) AS Total_tickets
FROM support_tickets AS st
JOIN customer_master  AS cm
	ON st.customer_id = cm.customer_id 
GROUP BY cm.segment
ORDER BY Total_tickets DESC


