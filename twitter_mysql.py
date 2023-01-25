from dbUtils import DBUtils
from twitter_objects import Tweet, Follow, User

class TwitterAPI:
    def __init__(self, user, password, database, host="localhost"):
        self.dbu = DBUtils(user, password, database, host)

    def post_tweet(self, tweet):
        sql = "INSERT INTO test_tweets (tweet_id, user_id, tweet_ts, tweet_text) VALUES (%s, %s, %s, %s)"
        val = (tweet.tweet_id, tweet.user_id, tweet.tweet_ts, tweet.tweet_text)
        self.dbu.insert_one(sql, val)