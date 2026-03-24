# Retail Sales Analytics & Revenue Forecasting
## End-to-End SQL, Python & Power BI Business Intelligence Case Study

## Executive Summary
Built a complete retail analytics system on the Superstore dataset - moving beyond descriptive reporting to give the business a 12-month revenue forecast it can plan against. The analysis covers regional performance, product category breakdown, customer segmentation, and a time series forecast using Facebook Prophet.

## Business Problem
Retail businesses often know what happened in sales but struggle to answer what will happen next. This project addresses:
- Which regions, categories, and segments drive the most revenue?
- Where are the seasonal peaks and growth opportunities?
- What does the next 12 months of revenue look like?
- When should the business increase inventory, run promotions, or allocate headcount?

## Key Findings
- **$2.26M total revenue** across 4,922 orders and 793 customers
- **West region** leads all regions in revenue; **South** is the lowest performer
- **Technology** is the top product category; **Consumer segment** is the largest buyer pool
- **October & August 2019** projected as peak revenue months (~$120K each) — prime windows for promotions and inventory build-up
- **February 2019** shows an unusual revenue spike (~$110K) worth investigating as a seasonal anomaly
- Month-over-month growth analysis reveals high volatility — forecasting helps smooth planning decisions

## Tools % Approach
SQL → Python (EDA + Prophet Forecasting) → Power BI (Interactive Dashboard)

| Stage | Tool | Purpose |
|---|---|---|
| Data cleaning & aggregation | SQL (MySQL) | Revenue by region, city, segment, category |
| Advanced analysis | SQL Window Functions | MoM growth rate, category share by segment |
| EDA & feature engineering | Python (Pandas) | Date features, monthly aggregations |
| Forecasting | Python (Prophet) | 12-month revenue forecast with confidence intervals |
| Visualisation | Power BI | Interactive dashboard with slicers |

## Results

| Metric | Value |
|---|---|
| Total Revenue | $2.26M |
| Avg Order Value | $459 |
| Total Orders | 4,922 |
| Customers | 793 |
| Forecast Horizon | 12 months |
| Peak Projected Month | Oct 2019 — ~$120K |

## 12-Month Revenue Forecast

| Month | Projected Revenue | Lower Bound | Upper Bound |
|---|---|---|---|
| Jan 2019 | $27,223 | $18,255 | $36,161 |
| Feb 2019 | $109,600 | $99,746 | $118,820 |
| Mar 2019 | $37,760 | $28,911 | $46,757 |
| Apr 2019 | $35,919 | $27,019 | $45,115 |
| May 2019 | $69,054 | $59,723 | $77,689 |
| Jun 2019 | $54,170 | $44,576 | $63,709 |
| Jul 2019 | $46,566 | $37,509 | $56,041 |
| Aug 2019 | $118,630 | $109,060 | $128,123 |
| Sep 2019 | $65,062 | $56,005 | $74,923 |
| Oct 2019 | $120,759 | $111,362 | $129,435 |
| Nov 2019 | $76,224 | $67,209 | $85,010 |
| Dec 2019 | $40,916 | $31,569 | $50,163 |

## Dashboard Preview
![Dashboard](dashboard.png)

## Files Included
| File | Description |
|---|---|
| `retail_sales_analysis.ipynb` | Python EDA + Prophet forecasting notebook |
| `retail_sales_queries.sql` | All SQL queries |
| `sales_dashboard.pbix` | Power BI dashboard file |
| `dashboard.png` | Dashboard screenshot |
| `data/` | Dataset folder |

## Business Recommendation
Target October and August for promotional campaigns and inventory build-up — Prophet projects these as the two highest revenue months (~$120K each). The February spike warrants further investigation; if it's driven by a specific segment or category, it represents an underutilised seasonal opportunity.

## Author
Shradha Kavile
