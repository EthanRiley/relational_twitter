USE test_twitter;

LOAD DATA LOCAL INFILE "/Users/ethangilworth/Documents/DS4400/assignments/assignment1/relational_twitter/data/follows_sample.csv"
INTO TABLE test_follows
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE "/Users/ethangilworth/Documents/DS4400/assignments/assignment1/relational_twitter/data/tweets_sample.csv"
INTO TABLE test_tweets
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;