use test_twitter;

/* Drop Tables if theyexist */
DROP TABLE IF EXISTS test_full_tweets;
DROP TABLE IF EXISTS test_full_follows;

CREATE TABLE IF NOT EXISTS test_full_tweets (
user_id INT,
tweet_text VARCHAR(140));

CREATE TABLE IF NOT EXISTS test_full_follows (
user_id INT,
follows_id INT);

LOAD DATA LOCAL INFILE "/Users/ethangilworth/Documents/DS4300/assignments/assignment_1/relational_twitter/data/follows.csv"
INTO TABLE test_full_follows
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "/Users/ethangilworth/Documents/DS4300/assignments/assignment_1/relational_twitter/data/tweet.csv"
INTO TABLE test_full_tweets
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;