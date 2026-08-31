-- =========================================
-- MONETIZATION ANALYSIS
-- Business Question:
-- Which acquisition channels generate
-- the strongest monetization performance?
-- =========================================


SELECT *

FROM monetization_metrics

ORDER BY arpu DESC;

SELECT
    acquisition_channel,
    purchase_revenue,
    ad_revenue,
    total_revenue,

    purchase_revenue / NULLIF(total_revenue, 0)
        AS purchase_revenue_share,

    ad_revenue / NULLIF(total_revenue, 0)
        AS ad_revenue_share

FROM monetization_metrics

ORDER BY total_revenue DESC;