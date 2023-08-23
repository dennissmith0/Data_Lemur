SELECT user_id, (MAX(post_date::DATE) - MIN(post_date::DATE)) AS days_between FROM posts
WHERE DATE_PART('year', post_date::date)=2021
GROUP BY posts.user_id
HAVING COUNT(post_id) > 1;