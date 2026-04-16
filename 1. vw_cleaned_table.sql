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