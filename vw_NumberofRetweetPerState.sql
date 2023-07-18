-- 4. Using a map visual, what U.S. State tweeted the highest number of NYE resolutions?--

SELECT
tweet_state,
Count(tweet_text) no_of_tweets

FROM
`twitter_new_near_resolution_project.resolutions`
GROUP BY
tweet_state
