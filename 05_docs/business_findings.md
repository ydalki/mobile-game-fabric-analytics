# Business Findings

This document summarizes the main analytical findings from the mobile game analytics project.

## 1. Retention & Engagement

- Overall player retention was approximately:
  - D1: 43.2%
  - D7: 22.3%
  - D30: 4.5%

- Organic users showed the strongest retention performance across acquisition channels.

- Retention declined significantly between D7 and D30, indicating that long-term engagement is a key product opportunity.

- Daily active users showed an upward trend during the observed period, while daily revenue was more volatile and driven by short-term spikes.

## 2. Level Performance

- The dataset contained gameplay telemetry for 459 observed levels.

- Average fail rate across levels was approximately 33.2%.

- Average attempts per level were approximately 1.49.

- Booster usage rate was approximately 36.3%.

- Later levels generally required more attempts and showed higher difficulty.

- Levels with higher failure rates also tended to show higher booster usage, suggesting that difficulty may contribute to booster demand.

- High-failure levels should be monitored carefully because excessive difficulty can increase player frustration and churn risk.

## 3. Monetization

- Approximately 3.7% of players became payers.

- Overall ARPU was approximately $1.38.

- Organic players generated strong monetization performance without paid acquisition costs.

- Revenue was concentrated among a relatively small group of paying users, which is typical for free-to-play mobile games.

- Purchase revenue and advertising revenue provided complementary monetization streams.

## 4. Marketing Performance

- Total paid marketing spend was approximately $72.32K.

- Attributed marketing revenue was approximately $19.00K.

- Overall CPI was approximately $2.23.

- Overall ROAS was approximately 0.26.

- Meta had a relatively high CPI but also delivered the strongest ROAS among paid acquisition channels.

- Lower CPI did not necessarily translate into higher player value.

- Acquisition decisions should therefore consider downstream retention and monetization rather than optimizing only for install cost.

## 5. Product A/B Test — Daily Reward Redesign

The experiment compared a Control group with a Treatment group using D7 retention as the primary metric.

### Results

- Control D7 retention: 21.89%
- Treatment D7 retention: 22.68%
- Absolute lift: +0.79 percentage points
- Relative lift: approximately +3.6%
- P-value: approximately 0.034

The improvement in D7 retention was statistically significant at the 5% significance level.

### Monetization Guardrail

- Control payer conversion: approximately 3.87%
- Treatment payer conversion: approximately 3.58%

The Treatment group showed a small decrease in payer conversion, but the difference was not statistically significant.

### Interpretation

The redesigned daily reward improved short-term retention, but the possible decline in payer conversion should be monitored before a full rollout.

A longer experiment or additional monetization analysis would be useful before making a final product decision.

## 6. Creative A/B Test — Creative Hook Experiment

The marketing experiment compared two creative strategies:

- Creative A: Gameplay-focused
- Creative B: Fail-scenario-focused

### Results

Creative B performed better in upper-funnel marketing metrics such as CTR, CVR, and CPI.

However, Creative A generated stronger downstream player quality.

- Creative A D7 retention: approximately 18.05%
- Creative B D7 retention: approximately 15.82%
- Absolute difference: approximately +2.24 percentage points in favor of Creative A
- P-value: approximately 0.003

Creative A also generated stronger payer conversion and downstream monetization.

### Interpretation

Optimizing only for low CPI or high CTR can lead to lower-quality acquired users.

Creative evaluation should combine acquisition efficiency with downstream metrics such as:

- Retention
- Payer conversion
- Revenue
- ROAS

## 7. Key Business Takeaways

The analysis highlights several important product and growth lessons:

- Retention quality varies significantly by acquisition source.
- Long-term retention is a major opportunity despite healthy early retention.
- Level difficulty should be monitored together with booster usage and churn behavior.
- Cheap installs do not necessarily generate valuable users.
- Product experiments should include monetization guardrails.
- Marketing creatives should be evaluated using downstream player quality, not only upper-funnel metrics.
- Combining product analytics and acquisition analytics provides a more complete view of player lifetime value.
