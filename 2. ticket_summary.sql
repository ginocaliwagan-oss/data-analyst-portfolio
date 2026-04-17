-- Project: Customer Support Performance
-- Task: ticket summary query
-- Description:
--     Provides a high-level overview of total ticket volume and
--     distribution across key status categories (Open, Closed, Pending).
--
-- Logic:
--     - Counts total number of tickets
--     - Uses conditional aggregation (CASE WHEN) to classify tickets
--       based on the cleaned status field (status_cleaned)
--
-- Purpose:
--     This query serves as the foundational KPI snapshot for stakeholders,
--     giving a quick view of workload and resolution status.
--
-- Author: Gin
-- Date: 2026-04-17

SELECT
    COUNT(*) AS total_tickets,
    COUNT(CASE WHEN status_cleaned = 'Open'    THEN 1 END) AS open_tickets,
    COUNT(CASE WHEN status_cleaned = 'Closed'  THEN 1 END) AS closed_tickets,
    COUNT(CASE WHEN status_cleaned = 'Pending' THEN 1 END) AS pending_tickets
FROM vw_cleaned_table;
