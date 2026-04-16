SELECT 
	COUNT(*) AS Total_Tickets,
	ROUND(
		COUNT(CASE WHEN status_cleaned = 'Closed' THEN 1 END) * 100.0 / COUNT(*), 2) AS pct_closed,
	ROUND(
		COUNT(CASE WHEN status_cleaned IN ('Open','Pending')  THEN 1 END) * 100.0 / COUNT(*), 2) AS pct_open
 
FROM vw_cleaned_table;