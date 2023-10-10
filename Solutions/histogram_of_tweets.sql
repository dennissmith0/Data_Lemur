WITH TweetsPerUser AS (
  SELECT 
    COUNT(tweet_id) AS tweets_num
  FROM tweets 
  WHERE tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
  GROUP BY user_id
)
SELECT 
  tweets_num AS tweet_count_per_user,
  COUNT(*) AS number_of_users
FROM TweetsPerUser
GROUP BY tweets_num
