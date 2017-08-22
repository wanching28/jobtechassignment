SELECT user_id, COUNT(user_id) 
FROM users 
GROUP BY user_id
HAVING ( COUNT(user_id) > 1 )
