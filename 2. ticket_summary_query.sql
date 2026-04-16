SELECT
    COUNT(*) AS total_tickets,
    COUNT(CASE WHEN status_cleaned = 'Open'    THEN 1 END) AS open_tickets,
    COUNT(CASE WHEN status_cleaned = 'Closed'  THEN 1 END) AS closed_tickets,
    COUNT(CASE WHEN status_cleaned = 'Pending' THEN 1 END) AS pending_tickets
FROM vw_cleaned_table;
