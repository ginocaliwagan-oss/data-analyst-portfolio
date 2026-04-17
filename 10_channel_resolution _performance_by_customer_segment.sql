-- Project: Customer Support Performance
-- Task: Channel Resolution Performance by Customer Segment
-- Description:
--     Evaluates support performance across customer segments and
--     communication channels by measuring ticket volume and closure rate.
--
-- Logic:
--     - Uses the cleaned ticket view (vw_cleaned_table) as the source
--     - Joins ticket data with customer_master using customer_id
--     - Groups records by customer segment and channel
--     - Counts total tickets for each segment-channel combination
--     - Calculates the percentage of closed tickets within each group
--
-- Business Use:
--     Helps stakeholders identify which channels perform better for
--     specific customer segments, supporting targeted process improvements
--     and smarter resource allocation.
--
-- Author: Gin
-- Date: 2026-04-18

SELECT
	cm.segment,
    st.channel,
	COUNT(*) AS Total_tickets,
    ROUND(
		COUNT(CASE WHEN status_cleaned = "Closed" THEN 1 END) * 100.0 / COUNT(*), 2) AS pct_closed
  
FROM vw_cleaned_table AS st
JOIN customer_master AS cm
	ON st.customer_id = cm.customer_id 

GROUP BY cm.segment, st.channel
ORDER BY cm.segment, pct_closed DESC
