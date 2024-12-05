# Funnels Analysis

This project analyzes user behavior on a website using data from the `raw_events` table. The goal is to understand user flow and identify areas for improvement, particularly focusing on **Cart Abandonment Rate** and **Checkout Flow Completion Rate**.
The project was carried out in [Google Sheet](https://docs.google.com/spreadsheets/d/1izZyXltIolXTjLMorTd64xTfK6T0fxdAAkaZXnLj8Yc/edit?gid=409644485#gid=409644485)

## 1. Data Exploration and Understanding

* **Data Source:** `raw_events` table (located in BigQuery)
* **Initial Steps:**
    * Queried the `raw_events` table to understand the available events.
    * Identified relevant events for funnel analysis (e.g., `Page View`, `Product View`, `Add to Cart`, `Checkout Started`, `Order Placed`).
    * Analyzed event frequency and user behavior patterns.

## 2. Funnel Analysis

* **Defined Funnel Stages:** 
    * Identified key stages in the user journey: `Page View`, `Product View`, `Add to Cart`, `Checkout Started`, `Purchase`.
* **Calculated Conversion Rates:** 
    * Determined the percentage of users who successfully transitioned between each stage of the funnel.
* **Identified Bottlenecks:** 
    * Pinpointed stages with significant drop-off rates, indicating areas for improvement.

## 3. Funnel Analysis by Country

* **Segmented Data:** Split the data by top 3 countries to analyze regional variations in user behavior.
* **Calculated Conversion Rates for Each Country:** Determined country-specific conversion rates at each stage of the funnel.
* **Identified Country-Specific Bottlenecks:** Analyzed regional differences in user behavior and identified country-specific areas for improvement.

## Key Metrics

* **Cart Abandonment Rate:** Percentage of users who add items to their cart but do not proceed to checkout.
* **Checkout Flow Completion Rate:** Percentage of users who successfully complete the checkout process and place an order.

## Tools Used
* BigQuery
* Google Sheets

The project was carried out in [Googlesheet](https://docs.google.com/spreadsheets/d/1izZyXltIolXTjLMorTd64xTfK6T0fxdAAkaZXnLj8Yc/edit?gid=409644485#gid=409644485) and has 3 sheets:
* Graded Task which holds the project instructions.
* Funnel Overview where I performed the whole funnels analysis.
* Queries Used which holds the queries written. You can also access the queries [here](queries.sql)
## Key Findings

1. The overall cart abandonment rate for the funnel is 64.8%, which is lower than the industry average of 70-75%.								
2. US has a cart abandonment rate of 64.8%, while India has a similar rate of 64.7%.								
								
**Interpretation**: This suggests that the checkout process in the funnel is relatively optimized compared to typical eCommerce platforms. 
                          However, there is still room for improvement as about two-thirds of users abandon their carts."								
								
**Checkout Flow Completion Rate:**								
The Checkout Flow Completion Rate from the begin_checkout to purchase is 45.28% for the overall funnel.								
This suggests that once users begin the checkout process, nearly half of them complete the purchase, which is a positive sign								
								
								

## Recommendations

1. **Further Optimize Checkout Process:**								
"Despite a lower-than-average abandonment rate, improving the ease and speed of the checkout process could further reduce cart abandonment. 
This could involve offering guest checkout options, reducing form fields, and improving mobile optimization, as these factors often contribute to abandonment."								
								
2. **Personalized Abandonment Recovery:**								
"Implement strategies to recover abandoned carts, such as personalized email reminders, push notifications, or even retargeting ads. 
These strategies have been proven to bring back users who are still on the fence about purchasing."								
