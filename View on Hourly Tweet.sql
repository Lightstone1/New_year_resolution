-- 3. Using the tweet_created field, and rounding to the nearest hour, what was the most popular hour of day to tweet? How many resolutions were tweeted?--

WITH
CT
AS 
(
  select
tweet_text,
tweet_created,
EXTRACT(HOUR FROM tweet_created) AS hour,
TIME_TRUNC(TIME(tweet_created), HOUR) AS tweethour,
CASE 
WHEN EXTRACT(MINUTE FROM tweet_created) > 30 THEN EXTRACT(HOUR FROM tweet_created) + 1
ELSE EXTRACT(HOUR FROM tweet_created) 
END AS hour_tweet

from
`twitter_new_near_resolution_project.resolutions`

order by 2
)

SELECT
hour_tweet,
COUNT(tweet_text) as No_tweet_time_count
FROM
CT
GROUP BY
hour_tweet
ORDER BY 2 DESC
