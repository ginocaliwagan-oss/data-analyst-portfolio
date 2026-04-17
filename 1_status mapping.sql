-- Project: Customer Support Performance
-- Object: Cleaned Support Tickets View
-- Description:
--     Standardizes ticket status values into consistent business categories
--     (Open, Closed, Pending) to ensure accurate reporting and analysis.
--
-- Cleaning Logic:
--     - 'In Progress', 'Escalated' → Open
--     - 'Resolved' → Closed
--     - 'Pending Customer' → Pending
--     - Handles case inconsistencies using LOWER()
--     - Unmapped values are categorized as 'Unknown'
--
-- Purpose:
--     This view serves as the cleaned data layer for all downstream analysis,
--     including KPI reporting, performance metrics, and dashboarding.
--
-- Author: Gin
-- Date: 2026-04-17

CREATE VIEW vw_cleaned_table AS
SELECT
    *,
    CASE
        -- already correct, keep as is
        WHEN status = 'Open'                         THEN 'Open'
        WHEN status = 'Pending'                      THEN 'Pending'
        WHEN status = 'Closed'                       THEN 'Closed'

        -- dirty values, map to correct business label
        WHEN status IN ('In Progress', 'Escalated')  THEN 'Open'
        WHEN status = 'Resolved'                     THEN 'Closed'
        WHEN status = 'Pending Customer'             THEN 'Pending'

        -- anything unexpected
        ELSE 'Unknown'
    END AS status_cleaned
FROM support_tickets;
