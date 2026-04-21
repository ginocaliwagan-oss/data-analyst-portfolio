-- Project: Customer Support Performance
-- Task: Response Time Distribution by Ticket Status
-- Description:
--     Analyzes first response time performance by categorizing tickets
--     into defined response speed buckets and breaking down ticket counts
--     by status (Open, Pending, Closed).
--
-- Logic:
--     - Uses the cleaned ticket view (vw_cleaned_table) as the source
--     - Categorizes tickets based on first_response_minutes using CASE WHEN
--     - Groups tickets into response categories:
--         • No Response Recorded
--         • Quick Response (<= 15 minutes)
--         • Normal Response (16–30 minutes)
--         • Slow Response (31–45 minutes)
--         • Super Slow Response (> 45 minutes)
--     - Applies conditional aggregation to count tickets by status
--     - Calculates total tickets per response category
--     - Computes percentage contribution of each category relative to all tickets
--
-- Business Use:
--     Helps stakeholders evaluate responsiveness of the support team,
--     identify delays in initial response, and assess how response speed
--     varies across ticket statuses to improve service quality and efficiency.
--
-- Author: Gin
-- Date: 2026-04-22

SELECT 
	CASE -- categorize tickets based on first_response_minutes
		WHEN (first_response_minutes) is NULL THEN 'no response recorded' 
        WHEN (first_response_minutes) <= 15 THEN 'quick response'
        WHEN (first_response_minutes) <= 30 THEN 'normal response'
		WHEN (first_response_minutes) <= 45 THEN 'slow response'
		ELSE 'super slow response'
	END AS response_rating,
    
    -- count tickets by status within each response category
    COUNT(CASE WHEN status_cleaned = 'Open' THEN 1 END) AS open_tickets,
	COUNT(CASE WHEN status_cleaned = 'Pending' THEN 1 END) AS pending_tickets,
	COUNT(CASE WHEN status_cleaned = 'Closed' THEN 1 END) AS closed_tickets,
    COUNT(*) AS total_tickets,
    
    -- calculate each response category as a percentage of all tickets
	ROUND(
		COUNT(*) * 100.0 / (SELECT COUNT(*) FROM vw_cleaned_table), 2) AS percentage
    
FROM vw_cleaned_table
GROUP BY response_rating
ORDER BY total_tickets DESC
