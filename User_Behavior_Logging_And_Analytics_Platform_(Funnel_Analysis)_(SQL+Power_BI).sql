'''User Behavior Logging and Analytics Platform

🎯 Business Objective of This Project

This table helps a company track user behavior — basically, what users are doing, and when they are doing it.

The goal is to use this information to:
✅ Improve the product
✅ Increase engagement
✅ Increase sales or conversions
✅ Detect issues or fraud
✅ Personalize user experience

📊 Why Businesses Need This Table
✅ 1. Understand User Activity

Example questions businesses can answer:

When are users most active?
What actions do users perform the most?
Do users log in daily or rarely?

This helps companies plan features, updates, and marketing.

✅ 2. Improve User Experience

If data shows users frequently log out after a certain action, maybe something is frustrating them.

This helps in:
Fixing pain points
Improving UI/UX
Designing better workflows

✅ 3. Measure Feature Success

If a new feature is launched, events can show:
Are people using it?
How often?
Did engagement increase?

This is critical for product decision-making.

✅ 4. Personalization & Recommendations

By knowing what a user does, a business can:

Recommend products
Send targeted notifications
Customize experience

Example:
If a user repeatedly views "Shoes", show shoe offers.

✅ 5. Marketing & Revenue

Events help answer:

What leads users to purchase?
Which steps cause drop-offs?
Which campaigns work best?

This directly affects sales and profit.

✅ 6. Security & Fraud Detection

Unusual patterns (e.g., 100 logins in 1 minute) can signal:

Account hacking
Bots
Fraud

The company can trigger alerts.

✅ 7. Compliance & Audit Tracking

Some industries need logs:

Who accessed what?
When did they take an action?

This helps with legal and audit requirements.

✅ Simple Example

Imagine a shopping app.

Events might be:

login
view_product
add_to_cart
purchase

From this, the business can see:
🧠 “Users add items to cart, but don’t purchase.”
➡️ Solution: Offer discounts or reminders.

That drives more revenue.

🧩 In Short

Technical View:
This table stores events.

Business View:
This table provides insights that help:
✅ Understand users
✅ Improve product
✅ Increase revenue
✅ Ensure security
'''

'''SaaS Funnel Means (Short & Simple)

A SaaS funnel tracks how users move through the key steps of using a software-as-a-service product (like Notion, Slack, Asana, Jira, HubSpot, etc.)
A funnel tells you how users move step-by-step through your product:
Visit → Sign Up → Onboard → Activate → Repeat Use

In simplest words:
A SaaS funnel shows how a user goes from visiting your product → signing up → onboarding → actually using the core feature → becoming a repeat user.

Typical SaaS Funnel Stages:
1️⃣ Visit – User lands on the website/app
2️⃣ Sign_up – User creates an account
3️⃣ Onboarded – User completes onboarding steps
4️⃣ Activate – User performs the first core action
Example:

Creates their first task (Notion)
Joins first workspace (Slack)
Creates their first board (Trello)

5️⃣ Repeat_use – User comes back and uses the core feature again
(This is retention)

This is THE MOST standard funnel used in SaaS Product Analytics roles.'''

CREATE TABLE user_events
(event_id SERIAL Primary key, 
user_id INT, 
event_name VARCHAR(50), 
event_time TIMESTAMP)
;

SELECT * FROM user_events;

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2001, 'visit', '2025-01-01 09:10:00'),
(2001, 'sign_up', '2025-01-01 09:15:00'),
(2001, 'onboard', '2025-01-01 09:22:00'),
(2001, 'activate', '2025-01-01 09:40:00'),
(2001, 'repeat_use', '2025-01-03 10:00:00'),
(2001, 'repeat_use', '2025-01-06 11:00:00'),

(2002, 'visit', '2025-01-01 10:20:00'),
(2002, 'sign_up', '2025-01-01 10:25:00'),
(2002, 'onboard', '2025-01-01 10:30:00'),

(2003, 'visit', '2025-01-01 11:00:00'),

(2004, 'visit', '2025-01-01 12:15:00'),
(2004, 'sign_up', '2025-01-01 12:18:00'),
(2004, 'onboard', '2025-01-01 12:25:00'),
(2004, 'activate', '2025-01-01 12:55:00'),

(2005, 'visit', '2025-01-02 08:00:00'),
(2005, 'sign_up', '2025-01-02 08:05:00'),
(2005, 'onboard', '2025-01-02 08:07:00'),
(2005, 'activate', '2025-01-02 08:35:00'),
(2005, 'repeat_use', '2025-01-03 09:00:00'),

(2006, 'visit', '2025-01-02 14:10:00'),
(2006, 'sign_up', '2025-01-02 14:14:00'),

(2007, 'visit', '2025-01-03 09:45:00'),
(2007, 'sign_up', '2025-01-03 09:48:00'),
(2007, 'onboard', '2025-01-03 09:55:00'),
(2007, 'activate', '2025-01-03 10:20:00'),
(2007, 'repeat_use', '2025-01-04 11:10:00'),

(2008, 'visit', '2025-01-03 15:00:00'),
(2008, 'visit', '2025-01-03 17:10:00'),
(2008, 'sign_up', '2025-01-03 17:20:00'),
(2008, 'onboard', '2025-01-03 17:29:00'),

(2009, 'visit', '2025-01-04 10:05:00'),
(2009, 'sign_up', '2025-01-04 10:12:00'),
(2009, 'onboard', '2025-01-04 10:18:00'),
(2009, 'activate', '2025-01-04 10:50:00'),
(2009, 'repeat_use', '2025-01-05 11:55:00'),

(2010, 'visit', '2025-01-04 13:20:00'),
(2010, 'sign_up', '2025-01-04 13:25:00'),
(2010, 'onboard', '2025-01-04 13:33:00'),
(2010, 'activate', '2025-01-04 14:00:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2011, 'visit', '2025-01-05 09:10:00'),
(2011, 'sign_up', '2025-01-05 09:13:00'),

(2012, 'visit', '2025-01-05 10:00:00'),
(2012, 'sign_up', '2025-01-05 10:05:00'),
(2012, 'onboard', '2025-01-05 10:12:00'),
(2012, 'activate', '2025-01-05 10:45:00'),

(2013, 'visit', '2025-01-05 11:30:00'),

(2014, 'visit', '2025-01-06 08:00:00'),
(2014, 'sign_up', '2025-01-06 08:08:00'),
(2014, 'onboard', '2025-01-06 08:15:00'),
(2014, 'activate', '2025-01-06 08:45:00'),
(2014, 'repeat_use', '2025-01-07 09:00:00'),
(2014, 'repeat_use', '2025-01-09 09:20:00'),

(2015, 'visit', '2025-01-06 10:50:00'),
(2015, 'sign_up', '2025-01-06 10:54:00'),

(2016, 'visit', '2025-01-06 12:10:00'),
(2016, 'sign_up', '2025-01-06 12:12:00'),
(2016, 'onboard', '2025-01-06 12:20:00'),

(2017, 'visit', '2025-01-07 09:00:00'),
(2017, 'sign_up', '2025-01-07 09:05:00'),
(2017, 'onboard', '2025-01-07 09:10:00'),
(2017, 'activate', '2025-01-07 09:50:00'),
(2017, 'repeat_use', '2025-01-08 11:00:00'),

(2018, 'visit', '2025-01-07 14:15:00'),
(2018, 'sign_up', '2025-01-07 14:20:00'),

(2019, 'visit', '2025-01-07 18:10:00'),
(2019, 'sign_up', '2025-01-07 18:15:00'),
(2019, 'onboard', '2025-01-07 18:25:00'),
(2019, 'activate', '2025-01-07 18:55:00'),

(2020, 'visit', '2025-01-08 08:10:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2021, 'visit', '2025-01-08 09:00:00'),
(2021, 'sign_up', '2025-01-08 09:05:00'),
(2021, 'onboard', '2025-01-08 09:12:00'),

(2022, 'visit', '2025-01-08 10:30:00'),
(2022, 'sign_up', '2025-01-08 10:34:00'),
(2022, 'onboard', '2025-01-08 10:40:00'),
(2022, 'activate', '2025-01-08 11:05:00'),

(2023, 'visit', '2025-01-08 12:15:00'),

(2024, 'visit', '2025-01-09 08:05:00'),
(2024, 'sign_up', '2025-01-09 08:12:00'),
(2024, 'onboard', '2025-01-09 08:18:00'),
(2024, 'activate', '2025-01-09 08:50:00'),
(2024, 'repeat_use', '2025-01-10 09:00:00'),
(2024, 'repeat_use', '2025-01-12 09:15:00'),

(2025, 'visit', '2025-01-09 10:00:00'),
(2025, 'sign_up', '2025-01-09 10:05:00'),
(2025, 'onboard', '2025-01-09 10:14:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2031, 'visit', '2025-01-10 09:10:00'),
(2031, 'sign_up', '2025-01-10 09:15:00'),
(2031, 'onboard', '2025-01-10 09:20:00'),
(2031, 'activate', '2025-01-10 09:55:00'),

(2032, 'visit', '2025-01-10 11:20:00'),
(2032, 'sign_up', '2025-01-10 11:25:00'),

(2033, 'visit', '2025-01-11 08:05:00'),
(2033, 'sign_up', '2025-01-11 08:10:00'),
(2033, 'onboard', '2025-01-11 08:18:00'),
(2033, 'activate', '2025-01-11 08:50:00'),
(2033, 'repeat_use', '2025-01-12 09:12:00'),

(2034, 'visit', '2025-01-11 10:00:00'),

(2035, 'visit', '2025-01-11 12:30:00'),
(2035, 'sign_up', '2025-01-11 12:35:00'),

(2036, 'visit', '2025-01-12 09:00:00'),
(2036, 'sign_up', '2025-01-12 09:05:00'),
(2036, 'onboard', '2025-01-12 09:12:00'),
(2036, 'activate', '2025-01-12 09:45:00'),

(2037, 'visit', '2025-01-12 11:15:00'),
(2037, 'sign_up', '2025-01-12 11:20:00'),
(2037, 'onboard', '2025-01-12 11:25:00'),
(2037, 'activate', '2025-01-12 11:55:00'),

(2038, 'visit', '2025-01-12 14:10:00'),

(2039, 'visit', '2025-01-13 08:10:00'),
(2039, 'sign_up', '2025-01-13 08:12:00'),

(2040, 'visit', '2025-01-13 09:00:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2041, 'visit', '2025-01-13 10:15:00'),
(2041, 'sign_up', '2025-01-13 10:20:00'),
(2041, 'onboard', '2025-01-13 10:28:00'),

(2042, 'visit', '2025-01-13 11:30:00'),
(2042, 'sign_up', '2025-01-13 11:35:00'),

(2043, 'visit', '2025-01-14 08:15:00'),
(2043, 'sign_up', '2025-01-14 08:22:00'),
(2043, 'onboard', '2025-01-14 08:28:00'),
(2043, 'activate', '2025-01-14 09:00:00'),

(2044, 'visit', '2025-01-14 10:40:00'),

(2045, 'visit', '2025-01-14 12:50:00'),
(2045, 'sign_up', '2025-01-14 12:55:00'),
(2045, 'onboard', '2025-01-14 13:05:00'),

(2046, 'visit', '2025-01-15 09:40:00'),
(2046, 'sign_up', '2025-01-15 09:45:00'),
(2046, 'onboard', '2025-01-15 09:52:00'),
(2046, 'activate', '2025-01-15 10:20:00'),
(2046, 'repeat_use', '2025-01-16 09:15:00'),

(2047, 'visit', '2025-01-15 11:05:00'),

(2048, 'visit', '2025-01-15 13:10:00'),
(2048, 'sign_up', '2025-01-15 13:15:00'),

(2049, 'visit', '2025-01-16 08:05:00'),
(2049, 'sign_up', '2025-01-16 08:10:00'),
(2049, 'onboard', '2025-01-16 08:18:00'),

(2050, 'visit', '2025-01-16 09:30:00'),
(2050, 'sign_up', '2025-01-16 09:35:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2051, 'visit', '2025-01-16 11:00:00'),
(2051, 'sign_up', '2025-01-16 11:05:00'),
(2051, 'onboard', '2025-01-16 11:10:00'),
(2051, 'activate', '2025-01-16 11:40:00'),
(2051, 'repeat_use', '2025-01-17 09:15:00'),

(2052, 'visit', '2025-01-17 08:15:00'),

(2053, 'visit', '2025-01-17 10:00:00'),
(2053, 'sign_up', '2025-01-17 10:05:00'),

(2054, 'visit', '2025-01-17 13:20:00'),
(2054, 'sign_up', '2025-01-17 13:25:00'),
(2054, 'onboard', '2025-01-17 13:34:00'),
(2054, 'activate', '2025-01-17 14:00:00'),

(2055, 'visit', '2025-01-18 09:10:00'),

(2056, 'visit', '2025-01-18 11:15:00'),
(2056, 'sign_up', '2025-01-18 11:20:00'),

(2057, 'visit', '2025-01-18 12:00:00'),
(2057, 'sign_up', '2025-01-18 12:05:00'),
(2057, 'onboard', '2025-01-18 12:10:00'),
(2057, 'activate', '2025-01-18 12:45:00'),

(2058, 'visit', '2025-01-18 14:00:00'),

(2059, 'visit', '2025-01-19 09:30:00'),
(2059, 'sign_up', '2025-01-19 09:35:00'),
(2059, 'onboard', '2025-01-19 09:42:00'),

(2060, 'visit', '2025-01-19 11:40:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2061, 'visit', '2025-01-19 14:15:00'),
(2061, 'sign_up', '2025-01-19 14:20:00'),

(2062, 'visit', '2025-01-20 08:10:00'),
(2062, 'sign_up', '2025-01-20 08:15:00'),
(2062, 'onboard', '2025-01-20 08:20:00'),
(2062, 'activate', '2025-01-20 08:55:00'),

(2063, 'visit', '2025-01-20 09:30:00'),

(2064, 'visit', '2025-01-20 10:45:00'),
(2064, 'sign_up', '2025-01-20 10:48:00'),
(2064, 'onboard', '2025-01-20 10:55:00'),
(2064, 'activate', '2025-01-20 11:20:00'),
(2064, 'repeat_use', '2025-01-21 09:05:00'),

(2065, 'visit', '2025-01-20 12:10:00'),

(2066, 'visit', '2025-01-21 08:10:00'),
(2066, 'sign_up', '2025-01-21 08:12:00'),

(2067, 'visit', '2025-01-21 09:30:00'),
(2067, 'sign_up', '2025-01-21 09:35:00'),
(2067, 'onboard', '2025-01-21 09:40:00'),
(2067, 'activate', '2025-01-21 10:10:00'),

(2068, 'visit', '2025-01-21 11:45:00'),

(2069, 'visit', '2025-01-21 13:00:00'),
(2069, 'sign_up', '2025-01-21 13:05:00'),

(2070, 'visit', '2025-01-22 08:15:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2071, 'visit', '2025-01-22 09:20:00'),
(2071, 'sign_up', '2025-01-22 09:25:00'),
(2071, 'onboard', '2025-01-22 09:33:00'),
(2071, 'activate', '2025-01-22 09:55:00'),

(2072, 'visit', '2025-01-22 10:45:00'),

(2073, 'visit', '2025-01-22 12:10:00'),
(2073, 'sign_up', '2025-01-22 12:15:00'),

(2074, 'visit', '2025-01-22 14:15:00'),
(2074, 'sign_up', '2025-01-22 14:20:00'),
(2074, 'onboard', '2025-01-22 14:28:00'),

(2075, 'visit', '2025-01-23 08:00:00'),
(2075, 'sign_up', '2025-01-23 08:04:00'),

(2076, 'visit', '2025-01-23 09:10:00'),
(2076, 'sign_up', '2025-01-23 09:12:00'),

(2077, 'visit', '2025-01-23 10:20:00'),
(2077, 'sign_up', '2025-01-23 10:25:00'),
(2077, 'onboard', '2025-01-23 10:32:00'),
(2077, 'activate', '2025-01-23 11:00:00'),

(2078, 'visit', '2025-01-23 13:40:00'),

(2079, 'visit', '2025-01-24 08:05:00'),
(2079, 'sign_up', '2025-01-24 08:10:00'),

(2080, 'visit', '2025-01-24 09:00:00'),
(2080, 'sign_up', '2025-01-24 09:05:00'),
(2080, 'onboard', '2025-01-24 09:12:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2081, 'visit', '2025-01-24 10:20:00'),

(2082, 'visit', '2025-01-24 11:15:00'),
(2082, 'sign_up', '2025-01-24 11:20:00'),

(2083, 'visit', '2025-01-24 12:45:00'),
(2083, 'sign_up', '2025-01-24 12:50:00'),
(2083, 'onboard', '2025-01-24 12:58:00'),

(2084, 'visit', '2025-01-25 08:10:00'),
(2084, 'sign_up', '2025-01-25 08:12:00'),
(2084, 'onboard', '2025-01-25 08:18:00'),
(2084, 'activate', '2025-01-25 08:50:00'),

(2085, 'visit', '2025-01-25 09:40:00'),

(2086, 'visit', '2025-01-25 11:20:00'),
(2086, 'sign_up', '2025-01-25 11:25:00'),
(2086, 'onboard', '2025-01-25 11:33:00'),
(2086, 'activate', '2025-01-25 11:55:00'),
(2086, 'repeat_use', '2025-01-26 09:15:00'),

(2087, 'visit', '2025-01-25 14:30:00'),

(2088, 'visit', '2025-01-26 08:10:00'),
(2088, 'sign_up', '2025-01-26 08:15:00'),

(2089, 'visit', '2025-01-26 10:00:00'),
(2089, 'sign_up', '2025-01-26 10:05:00'),
(2089, 'onboard', '2025-01-26 10:12:00'),

(2090, 'visit', '2025-01-26 11:40:00');

INSERT INTO user_events (user_id, event_name, event_time) VALUES
(2091, 'visit', '2025-01-26 13:10:00'),

(2092, 'visit', '2025-01-26 15:20:00'),
(2092, 'sign_up', '2025-01-26 15:25:00'),
(2092, 'onboard', '2025-01-26 15:33:00'),
(2092, 'activate', '2025-01-26 16:00:00'),

(2093, 'visit', '2025-01-27 09:10:00'),

(2094, 'visit', '2025-01-27 10:30:00'),
(2094, 'sign_up', '2025-01-27 10:34:00'),

(2095, 'visit', '2025-01-27 11:50:00'),
(2095, 'sign_up', '2025-01-27 11:54:00'),
(2095, 'onboard', '2025-01-27 12:05:00'),

(2096, 'visit', '2025-01-27 13:10:00'),
(2096, 'sign_up', '2025-01-27 13:15:00'),
(2096, 'onboard', '2025-01-27 13:22:00'),
(2096, 'activate', '2025-01-27 13:50:00'),
(2096, 'repeat_use', '2025-01-28 09:20:00'),

(2097, 'visit', '2025-01-27 15:20:00'),

(2098, 'visit', '2025-01-28 08:05:00'),
(2098, 'sign_up', '2025-01-28 08:10:00'),

(2099, 'visit', '2025-01-28 09:30:00'),

(2100, 'visit', '2025-01-28 10:40:00'),
(2100, 'sign_up', '2025-01-28 10:44:00'),
(2100, 'onboard', '2025-01-28 10:55:00'),
(2100, 'activate', '2025-01-28 11:20:00');


SELECT * FROM user_events;

-- We assigned each event name a stage, if they Visit thats 1, if they sign up thats 2 and so on
WITH stage_mapping AS (
    SELECT 
        user_id,
        event_name,
        event_time,
        CASE 
            WHEN event_name = 'visit' THEN 1
            WHEN event_name = 'sign_up' THEN 2
            WHEN event_name = 'onboard' THEN 3
            WHEN event_name = 'activate' THEN 4
            WHEN event_name = 'repeat_use' THEN 5
        END AS stage_num
    FROM user_events
),
user_max_stage AS (  
    SELECT 
        user_id,
        MAX(stage_num) AS max_stage
    FROM stage_mapping
    GROUP BY user_id -- For every user we check the highest completed stage, like user 103 reached max stage = 3, so thats "activate"
),
funnel_counts AS (
    SELECT 
        max_stage,
        COUNT(*) AS users_at_stage
    FROM user_max_stage
    GROUP BY max_stage -- We count how many users reached each stage, like visit = 10, acivate = 5 and so on
)
SELECT
    CASE 
        WHEN max_stage = 1 THEN 'Visit'
        WHEN max_stage = 2 THEN 'Sign Up'
        WHEN max_stage = 3 THEN 'Onboard'
        WHEN max_stage = 4 THEN 'Activate'
        WHEN max_stage = 5 THEN 'Repeat Use'
    END AS stage_name,
    users_at_stage,
    ROUND( users_at_stage * 100.0 / SUM(users_at_stage) OVER (), 2 ) AS percent_of_total --OVER() with nothing inside means: Calculate over the entire result set (all rows), without grouping or ordering.
FROM funnel_counts
ORDER BY max_stage; -- We measure conversion and drop, like What % of users signed up?, What % got activated?, Where is the biggest drop?

SELECT COUNT(*) FROM user_events;
TRUNCATE TABLE user_events;

