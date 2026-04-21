-- Project: Customer Support Performance
-- Task: Quarterly Ticket Volume and Status Breakdown
-- Description:
--     Analyzes support ticket volume on a quarterly basis and provides
--     a breakdown of ticket statuses (Open, Pending, Closed) for each quarter.
--
-- Logic:
--     - Uses the cleaned ticket view (vw_cleaned_table) as the source
--     - Extracts year and quarter from the ticket creation date (opened_at)
--     - Combines year and quarter into a readable label (e.g., "2026 Q1")
--     - Groups tickets by the derived quarter label
--     - Applies conditional aggregation to count tickets by status:
--         • Open
--         • Pending
--         • Closed
--     - Calculates total ticket volume per quarter
--     - Orders results chronologically using the earliest date in each group
--
-- Business Use:
--     Helps stakeholders monitor support demand over time, identify
--     seasonal patterns or spikes in ticket volume, and evaluate how
--     ticket resolution progresses across quarters. This insight supports
--     better resource planning, workload balancing, and service improvement.
--
-- Author: Gin
-- Date: 2026-04-22

SELECT 
	CONCAT(year(opened_at), ' Q',quarter(opened_at)) AS Q_label,
	COUNT(CASE WHEN status_cleaned = 'Open' THEN 1 END) AS open_tickets,
    COUNT(CASE WHEN status_cleaned = 'Pending' THEN 1 END) AS pending_tickets,
    COUNT(CASE WHEN status_cleaned = 'Closed' THEN 1 END) AS closed_tickets,
    COUNT(*) AS total_tickets,    
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM vw_cleaned_table), 2) AS percentage_of_total

FROM vw_cleaned_table
GROUP BY CONCAT(YEAR(opened_at), ' Q', QUARTER(opened_at))
ORDER BY MIN(opened_at);
