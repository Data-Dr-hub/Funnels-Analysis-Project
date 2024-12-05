-- Unique Events
WITH								
ranked_events AS (								
select *,								
row_number() over(partition by user_pseudo_id, event_name order by event_timestamp) rn								
from `turing_data_analytics.raw_events`								
order by user_pseudo_id)								
select * from ranked_events where rn = 1								
								
-- Top 3 Countries Events

WITH								
ranked_events AS (								
select *,								
row_number() over(partition by user_pseudo_id, event_name order by event_timestamp) rn								
from `turing_data_analytics.raw_events`								
order by user_pseudo_id)								
select * from ranked_events where rn = 1								
unique_events AS(								
select * from ranked_events where rn = 1),								
								
ordered_events AS(								
select *,								
case								
when event_name = 'view_item' then 1								
when event_name = 'add_to_cart' then 2								
when event_name = 'begin_checkout' then 3								
when event_name = 'add_payment_info' then 4								
when event_name = 'purchase' then 5 else NULL end as event_order								
from unique_events),								
								
top_countries AS (								
select country, count(*) AS total_events								
FROM ordered_events								
GROUP BY 1								
ORDER BY total_events DESC								
LIMIT 3 -- filter for the top 3 countries by number of events								
)								
								
SELECT								
event_order,								
event_name,								
SUM(CASE WHEN country = 'United States' THEN 1 ELSE 0 END) AS US_Events,								
SUM(CASE WHEN country = 'India' THEN 1 ELSE 0 END) AS India_Events,								
SUM(CASE WHEN country = 'Canada' THEN 1 ELSE 0 END) AS Canada_Events,								
count(*) as full_count								
								
FROM ordered_events								
WHERE event_order IS NOT NULL								
GROUP BY 1,2								
ORDER BY event_order								
														