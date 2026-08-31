-- =========================================
-- A/B EXPERIMENT ANALYSIS
-- Business Question:
-- Did the tested variants produce
-- statistically meaningful improvements?
-- =========================================


-- 1. Full experiment results
SELECT *
FROM experiment_metrics
ORDER BY
    experiment_name,
    experiment_group;


-- 2. Compare variant vs baseline
SELECT
    experiment_name,

    MAX(
        CASE
            WHEN experiment_group IN ('Treatment', 'Creative A')
            THEN primary_metric_value
        END
    ) AS variant_metric,

    MAX(
        CASE
            WHEN experiment_group IN ('Control', 'Creative B')
            THEN primary_metric_value
        END
    ) AS baseline_metric,

    MAX(p_value_primary) AS p_value,
    MAX(ci_low_primary) AS ci_low,
    MAX(ci_high_primary) AS ci_high

FROM experiment_metrics
GROUP BY experiment_name;