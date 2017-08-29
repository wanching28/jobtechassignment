CREATE TABLE users (
user_id INT identity(1, 1) PRIMARY KEY,
email_id NVARCHAR(200) NOT NULL DEFAULT '',
password NVARCHAR(64) NOT NULL DEFAULT '',
first_name NVARCHAR(128) NOT NULL DEFAULT '',
last_name NVARCHAR(128) NOT NULL DEFAULT '',
enabled BIT DEFAULT 1
);

CREATE TABLE user_singin_logs (
user_id INT	NOT NULL, 
session_id NVARCHAR(128) 	NOT NULL DEFAULT '',
signed_in_time  DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00', 
signed_out_time DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
PRIMARY KEY (user_id, session_id),
FOREIGN KEY (user_id) REFERENCES users (user_id)
);
