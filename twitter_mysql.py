from dbUtils import DBUtils
from twitter_objects import Tweet, Follow, User

class TwitterAPI:
    def __init__(self, user, password, database, host="localhost"):
        self.dbu = DBUtils(user, password, database, host)

    def post_tweet(self, tweet):
        sql = "INSERT INTO tweets (user_id, tweet_text) VALUES (%s, %s)"
        val = (tweet.user_id, tweet.tweet_text)
        self.dbu.insert_one(sql, val)