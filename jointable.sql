SELECT u.user_id, ulog.signed_in_time, ulog.signed_out_time
FROM  user_singin_logs ulog
LEFT JOIN users u ON ulog.user_id = u.user_id
ORDER BY user_id DESC
