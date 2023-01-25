USE test_twitter;

CREATE TABLE IF NOT EXISTS test_tweets(
TWEET_ID INT PRIMARY KEY UNIQUE,
USER_ID INT,
TWEET_TS TIMESTAMP,
TWEET_TEXT VARCHAR(140)
);

CREATE TABLE IF NOT EXISTS test_follows (
USER_ID INT,
FOLLOWS_ID INT);

LOAD DATA LOCAL INFILE "/Users/ethangilworth/Documents/DS4300/assignments/assignment_1/relational_twitter/data/follows_sample.csv"
INTO TABLE test_follows
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;