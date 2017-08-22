CREATE TABLE users (
user_id 	INT(11)  	NOT NULL   AUTO_INCREMENT,
email_id  	VARCHAR(200)	NOT NULL, 
password 	VARCHAR(64) 	NOT NULL, 
first_name 	VARCHAR(128) 	NOT NULL, 
last_name 	VARCHAR(128) 	NOT NULL,
enabled 	BIT		DEFAULT 1,
PRIMARY KEY (user_id)
);

CREATE TABLE user_singin_logs (
user_id 		INT(11) 		NOT NULL, 
session_id 		VARCHAR(128) 	NOT NULL,
signed_in_time 	TIMESTAMP,
signed_out_time 	TIMESTAMP,
PRIMARY KEY (user_id, session_id)
FOREIGN KEY (user_id) REFERENCES users (user_id)
);
