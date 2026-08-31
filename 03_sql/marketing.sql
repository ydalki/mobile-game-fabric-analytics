-- =========================================
-- MARKETING PERFORMANCE ANALYSIS
-- Business Question:
-- Which paid acquisition channels generate
-- the most efficient and valuable users?
-- =========================================


-- 1. Overall marketing performance
SELECT *
FROM marketing_performance

ORDER BY roas DESC;


-- 2. Compare acquisition cost and user value
SELECT
    acquisition_channel,
    cpi,
    cac,
    payer_conversion,
    arpu,
    arppu,
    roas

FROM marketing_performance

ORDER BY roas DESC;