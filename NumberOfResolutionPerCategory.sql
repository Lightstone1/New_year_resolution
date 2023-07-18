-- 1. What is the most popular resolution category? Least popular?--

SELECT  
tweet_category,
count(tweet_text) as group_category 
from
`dataverse-392722.twitter_new_near_resolution_project.resolutions`
group by
tweet_category
ORDER BY
group_category desc
