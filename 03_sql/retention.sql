SELECT *
FROM retention_cohorts
ORDER BY install_date, acquisition_channel;

SELECT
    acquisition_channel,
    SUM(cohort_size) AS total_players,
    SUM(d1_retention * cohort_size) / SUM(cohort_size) AS weighted_d1_retention,
    SUM(d7_retention * cohort_size) / SUM(cohort_size) AS weighted_d7_retention,
    SUM(d30_retention * cohort_size) / SUM(cohort_size) AS weighted_d30_retention
FROM retention_cohorts
GROUP BY acquisition_channel
ORDER BY weighted_d30_retention DESC;