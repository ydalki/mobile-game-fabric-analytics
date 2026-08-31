-- =========================================
-- LEVEL PERFORMANCE ANALYSIS
-- Business Question:
-- Which levels create the most player friction?
-- =========================================


-- 1. Levels with the highest fail rate
SELECT TOP 20 *
FROM level_performance
WHERE level_starts >= 100
ORDER BY fail_rate DESC;


-- 2. Levels requiring the most attempts
SELECT TOP 20
    level_number,
    level_starts,
    fail_rate,
    avg_attempt_number,
    booster_usage_rate,
    avg_moves_remaining
FROM level_performance
WHERE level_starts >= 100
ORDER BY avg_attempt_number DESC;