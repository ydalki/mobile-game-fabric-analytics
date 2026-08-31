# Data Dictionary

This document summarizes the main datasets used in the mobile game analytics project.

## Source Tables

### players
Player-level profile and acquisition information.

Key fields:
- `player_id` — Unique player identifier
- `install_date` — Date the player installed the game
- `country` — Player country
- `platform` — iOS or Android
- `acquisition_channel` — Marketing acquisition source
- `campaign_id` — Marketing campaign identifier
- `creative_id` — Marketing creative identifier
- `experiment_group` — Product A/B test assignment
- `creative_experiment_group` — Creative experiment assignment

### sessions
Game session activity for each player.

Key fields:
- `session_id` — Unique session identifier
- `player_id` — Player identifier
- `session_number` — Sequential session number
- `session_start` — Session start timestamp
- `session_end` — Session end timestamp
- `days_since_install` — Number of days since installation

### level_events
Gameplay telemetry generated during puzzle level progression.

Key fields:
- `player_id` — Player identifier
- `session_id` — Session identifier
- `event_type` — Level start, complete, or fail
- `level_number` — Puzzle level
- `attempt_number` — Attempt number
- `moves_remaining` — Remaining moves after completion
- `booster_used` — Booster usage indicator

### purchases
In-app purchase transactions.

Key fields:
- `player_id` — Player identifier
- `session_id` — Session identifier
- `purchase_timestamp` — Transaction timestamp
- `product_id` — Purchased product
- `revenue_usd` — Purchase revenue in USD

### ad_events
Advertising monetization events.

Key fields:
- `player_id` — Player identifier
- `session_id` — Session identifier
- `ad_type` — Rewarded or interstitial ad
- `placement` — In-game ad placement
- `revenue_usd` — Advertising revenue

### marketing_spend
Daily paid acquisition campaign performance.

Key fields:
- `date` — Campaign date
- `acquisition_channel` — Marketing channel
- `country` — Target country
- `campaign_id` — Campaign identifier
- `creative_id` — Creative identifier
- `creative_type` — Creative format/type
- `creative_concept` — Creative concept
- `campaign_objective` — Campaign objective
- `impressions` — Number of ad impressions
- `clicks` — Number of clicks
- `installs` — Number of attributed installs
- `spend_usd` — Marketing spend

---

## Gold Layer Tables

### player_metrics
One row per player containing aggregated engagement, progression, and monetization metrics.

Includes:
- Session counts
- Purchase revenue
- Ad revenue
- Total revenue
- Payer status
- Level progression
- Level failure metrics

### daily_kpis
Daily game-level performance metrics.

Includes:
- DAU
- Sessions
- Session duration
- Purchases
- Payers
- Purchase revenue
- Ad revenue
- Installs
- Total revenue

### retention_cohorts
Retention metrics grouped by install cohort and acquisition channel.

Includes:
- Cohort size
- D1 retention
- D7 retention
- D30 retention

### level_performance
Level-level gameplay performance.

Includes:
- Starts
- Completes
- Fails
- Completion rate
- Fail rate
- Average attempts
- Booster usage
- Average moves remaining

### monetization_metrics
Monetization metrics aggregated by acquisition channel.

Includes:
- Total players
- Payers
- Purchase revenue
- Ad revenue
- Total revenue
- Payer conversion
- ARPU
- ARPPU

### marketing_performance
Marketing efficiency metrics by paid acquisition channel.

Includes:
- Impressions
- Clicks
- Installs
- Spend
- CTR
- CVR
- CPC
- CPI
- CAC
- ROAS

### creative_performance
Creative-level marketing and downstream player quality metrics.

Includes:
- Creative type
- Creative concept
- Funnel metrics
- Attributed users
- Payers
- Purchase revenue
- Payer conversion
- ROAS

### experiment_metrics
Summary metrics for product and creative A/B experiments.

Includes:
- Experiment name
- Experiment group
- Primary metric
- Primary metric value
- P-value
- Payer conversion
