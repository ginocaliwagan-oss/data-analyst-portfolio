-- Project: Customer Support Performance
-- Task: Ticket Aging Analysis
-- Description:
--     Analyzes how long open tickets have remained unresolved by grouping
--     them into aging buckets based on the number of days since creation.
--
-- Logic:
--     - Uses the cleaned ticket view (vw_cleaned_table) as the source
--     - Filters for open tickets only
--     - Calculates ticket age using the difference between today and created_date
--     - Groups tickets into defined aging ranges using CASE WHEN
--     - Counts the number of tickets in each aging bucket
--
-- Business Use:
--     Helps stakeholders monitor unresolved ticket backlog, identify aging
--     support issues, and improve response efficiency before delays worsen.
--
-- Author: Gin
-- Date: 2026-04-21

SELECT
    CASE
        WHEN DATEDIFF(CURDATE(), opened_at) <= 100 THEN '0-100 days'
        WHEN DATEDIFF(CURDATE(), opened_at) <= 200 THEN '101-200 days'
        WHEN DATEDIFF(CURDATE(), opened_at) <= 365 THEN '201-365 days'
        ELSE 'More than a year'
    END AS aging_bucket,
    COUNT(*) AS open_ticket_count
FROM vw_cleaned_table
WHERE status_cleaned = 'Open'
GROUP BY aging_bucket
ORDER BY aging_bucket;
    
