## Advertising Campaign & Product Analysis using SQL
## Project Overview

This project analyzes a large-scale advertising dataset using PostgreSQL and SQL to uncover patterns in advertising campaigns, product categories, brand promotion, and price segmentation.

The analysis focuses on understanding how advertisers structure campaigns and promote products across different market segments.

The dataset contains 846,000+ advertising records, allowing meaningful insights into advertising distribution and product pricing strategies.

## Objectives

The main objectives of this project were to:

Analyze advertising campaign structures

Identify the most advertised product categories

Examine brand-level advertising activity

Study pricing patterns across advertised products

Understand how campaigns promote products across different price tiers

## Dataset

The dataset contains product-level advertising data used in online marketing campaigns.

Total Records: 846,811

Dataset Columns
Column	Description
adgroup_id	Unique advertisement group ID
cate_id	Product category identifier
campaign_id	Advertising campaign ID
customer	Advertiser ID
brand	Brand identifier
price	Product price

## Tools & Technologies

PostgreSQL – Database management and query execution

pgAdmin 4 – Database interface and data import

SQL – Data querying and analysis

## Analysis Performed

Several SQL queries were written to answer key marketing questions.

Examples of analysis include:

Identifying the most advertised product categories

Determining which campaigns promote the highest-value products

Analyzing price distribution across campaigns

Examining advertising activity by brand

Segmenting products into price tiers

## Key Insights

Advertising activity is concentrated within a few product categories.

Mid-range products dominate advertising campaigns.

Certain campaigns focus on promoting premium-priced products.

Some campaigns advertise products across a wide range of prices.

Luxury products represent a smaller but distinct advertising segment.

Overall, the analysis suggests that most advertising strategies focus on mainstream consumer markets while maintaining niche premium offerings.

## Project Structure
Advertising-SQL-Analysis
│
├── dataset
│   └── ad_feature.csv
│
├── sql
│   └── ad_analysis.sql
│
├── presentation
│   └── advertising_analysis_presentation.pptx
│
└── README.md
Example SQL Query

## Example query used to identify the most advertised product categories:

SELECT cate_id,
COUNT(*) AS ad_count
FROM ad_features
GROUP BY cate_id
ORDER BY ad_count DESC
LIMIT 10;

This query helps identify which product categories dominate advertising activity.

## Future Improvements

Potential extensions for this project include:

Integrating click data to calculate Click-Through Rate (CTR)

Building advertising performance dashboards

Performing machine learning-based ad performance prediction

Conducting deeper campaign effectiveness analysis

## Conclusion

This project demonstrates how SQL can be used to analyze large-scale advertising datasets and extract meaningful insights about marketing strategies, campaign structures, and product pricing patterns.

Such analyses can help organizations better understand advertising behavior and optimize campaign strategies.
