-- Project: Customer Support Performance
-- Task: Segment Ticket Status Breakdown
-- Description:
--     Analyzes the distribution of ticket statuses across customer segments
--     to understand how workload and resolution outcomes vary by segment.
--
-- Logic:
--     - Uses the cleaned ticket view (vw_cleaned_table) as the source
--     - Joins ticket data with customer_master using customer_id
--     - Groups records by customer segment
--     - Applies conditional aggregation to count tickets by status:
--         • Open
--         • Pending
--         • Closed
--
-- Business Use:
--     Helps stakeholders identify which customer segments generate the most
--     tickets and how effectively those tickets are being resolved,
--     enabling better prioritization and support strategy decisions.
--
-- Author: Gin
-- Date: 2026-04-21

SELECT 
	    cm.segment,
	COUNT(
		CASE WHEN st.status_cleaned = 'Open' THEN 1 END) AS Open_Tickets,
	 COUNT(
		CASE WHEN st.status_cleaned = 'Pending' THEN 1 END) AS Pending_Tickets,
	COUNT(
		CASE WHEN st.status_cleaned = 'Closed' THEN 1 END) AS Closed_Tickets,
	COUNT(*) AS total_tickets
    
FROM vw_cleaned_table AS st
JOIN customer_master AS cm
	ON st.customer_id = cm.customer_id 
GROUP BY cm.segment
