
-- 1. Dataset size
SELECT COUNT(*) FROM ad_features;


-- 2. Missing brand values
SELECT COUNT(*) 
FROM ad_features
WHERE brand IS NULL;


-- 3. Price distribution
SELECT 
MIN(price) AS min_price,
MAX(price) AS max_price,
AVG(price) AS avg_price
FROM ad_features;


-- 4. Top product categories
SELECT cate_id,
COUNT(*) AS ad_count
FROM ad_features
GROUP BY cate_id
ORDER BY ad_count DESC
LIMIT 10;


-- 5. Top campaigns
SELECT campaign_id,
COUNT(*) AS ads
FROM ad_features
GROUP BY campaign_id
ORDER BY ads DESC
LIMIT 10;


-- 6. Brand advertising activity
SELECT brand,
COUNT(*) AS ads_count
FROM ad_features
WHERE brand IS NOT NULL
GROUP BY brand
ORDER BY ads_count DESC
LIMIT 10;
--Which Campaigns Advertise the Most Expensive Products?
SELECT campaign_id,
AVG(price) AS avg_price
FROM ad_features
GROUP BY campaign_id
ORDER BY avg_price DESC
LIMIT 10;
--Which Categories Have the Most Expensive Products?
SELECT cate_id,
MAX(price) AS max_price
FROM ad_features
GROUP BY cate_id
ORDER BY max_price DESC
LIMIT 10;
--Which brands dominate each category?
SELECT cate_id,
brand,
COUNT(*) AS ads
FROM ad_features
WHERE brand IS NOT NULL
GROUP BY cate_id, brand
ORDER BY ads DESC
LIMIT 10;
--Price Tier Market Distribution
SELECT
CASE
WHEN price < 50 THEN 'Budget'
WHEN price BETWEEN 50 AND 200 THEN 'Mid-range'
WHEN price BETWEEN 200 AND 500 THEN 'Premium'
ELSE 'Luxury'
END AS price_segment,
COUNT(*) AS ads
FROM ad_features
GROUP BY price_segment
ORDER BY ads DESC;
-- Do campaigns advertise products across wide price ranges?
SELECT campaign_id,
MIN(price) AS min_price,
MAX(price) AS max_price
FROM ad_features
GROUP BY campaign_id
ORDER BY max_price DESC
LIMIT 10;