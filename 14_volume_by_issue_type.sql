-- Project: Customer Support Performance
-- Task: Ticket Volume by Issue Type
-- Description:
--     Analyzes the distribution of support tickets across different issue types
--     and provides a breakdown of ticket status (Open, Pending, Closed) for each category.
--
-- Logic:
--     - Uses the cleaned ticket view (vw_cleaned_table) as the source
--     - Replaces missing issue types with 'Unknown' using COALESCE
--     - Groups tickets by issue type
--     - Applies conditional aggregation to count tickets by status:
--         • Open
--         • Pending
--         • Closed
--     - Calculates total tickets per issue type
--     - Computes percentage contribution of each issue type relative to all tickets
--
-- Business Use:
--     Helps stakeholders identify which issue types generate the most support demand,
--     understand how tickets are progressing across statuses, and prioritize operational
--     improvements to reduce ticket volume and enhance customer experience.
--
-- Author: Gin
-- Date: 2026-04-22

SELECT 
    COALESCE(issue_type, 'Unknown') AS issue_type,
    COUNT(CASE WHEN status_cleaned = 'Open' THEN 1 END) AS open_tickets,
    COUNT(CASE WHEN status_cleaned = 'Pending' THEN 1 END) AS pending_tickets,
    COUNT(CASE WHEN status_cleaned = 'Closed' THEN 1 END) AS closed_tickets,
    COUNT(*) AS total_tickets,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM vw_cleaned_table), 2) AS percentage_of_total
FROM vw_cleaned_table
GROUP BY COALESCE(issue_type, 'Unknown')
ORDER BY percentage_of_total DESC;