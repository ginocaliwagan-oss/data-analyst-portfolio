-- Project: Customer Support Performance
-- Task: Ticket Volume by Customer Segment and Channel
-- Description:
--     Analyzes how support ticket volume is distributed across both
--     customer segments and communication channels.
--
-- Logic:
--     - Joins support_tickets with customer_master using customer_id
--     - Groups records by customer segment and channel
--     - Counts total tickets for each combination
--     - Sorts results by segment and ticket volume (descending)
--
-- Business Use:
--     Helps identify preferred support channels for each customer segment,
--     enabling better targeting of support strategies and resource allocation.
--
-- Author: Gin
-- Date: 2026-04-18

SELECT
	cm.segment,
    st.channel,
	COUNT(*) AS Total_tickets
FROM support_tickets AS st
JOIN customer_master  AS cm
	ON st.customer_id = cm.customer_id 
GROUP BY cm.segment, st.channel
ORDER BY cm.segment, total_tickets DESC