--2.Which resolution category was retweeted the most? Least?--
select
tweet_category,
sum (retweet_count) as sum_retweet_category
from
`twitter_new_near_resolution_project.resolutions`
GROUP BY
tweet_category
ORDER BY
sum_retweet_category DESC
