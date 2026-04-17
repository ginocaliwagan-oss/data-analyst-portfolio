-- Project: Customer Support Performance
-- Task: Channel Performance Analysis
-- Description:
--     Evaluates support performance across different communication channels
--     by combining ticket volume with resolution efficiency.
--
-- Logic:
--     - Groups tickets by channel
--     - Counts total tickets per channel
--     - Calculates percentage of closed tickets using conditional aggregation
--     - Uses cleaned status field (status_cleaned) for consistent categorization
--
-- Business Use:
--     Helps stakeholders identify which channels are performing efficiently
--     and which may require process improvements or additional resources.
--     Enables comparison between workload (volume) and effectiveness (closure rate).
--
-- Author: Gin
-- Date: 2026-04-17

SELECT 
	channel,
	COUNT(*) AS Total_channel
FROM vw_cleaned_table
GROUP BY Channel
ORDER BY Total_channel DESC
