USE test_twitter;

DROP TABLE IF EXISTS tweets;
DROP TABLE IF EXISTS follows;

CREATE TABLE IF NOT EXISTS tweets(
TWEET_ID INT PRIMARY KEY UNIQUE AUTO_INCREMENT,
USER_ID INT,
TWEET_TS TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
TWEET_TEXT VARCHAR(140)
);

CREATE TABLE IF NOT EXISTS follows (
USER_ID INT,
FOLLOWS_ID INT);

LOAD DATA LOCAL INFILE "/Users/ethangilworth/Documents/DS4300/assignments/assignment_1/relational_twitter/data/follows.csv"
INTO TABLE follows
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;