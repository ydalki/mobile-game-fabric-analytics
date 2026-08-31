-- =========================================
-- ADVANCED SQL ANALYSIS
-- Business Question:
-- Which levels rank as the most difficult
-- based on fail rate?
-- =========================================

WITH ranked_levels AS (

    SELECT
        level_number,
        level_starts,
        fail_rate,
        avg_attempt_number,

        RANK() OVER (
            ORDER BY fail_rate DESC
        ) AS difficulty_rank

    FROM level_performance

    WHERE level_starts >= 100
)

SELECT
    level_number,
    level_starts,
    fail_rate,
    avg_attempt_number,
    difficulty_rank

FROM ranked_levels

WHERE difficulty_rank <= 20

ORDER BY difficulty_rank;