SELECT 
	status_cleaned, 
	count(status_cleaned) AS Total 
FROM vw_cleaned_table
GROUP BY status_cleaned
ORDER BY total DESC