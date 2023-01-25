from dbUtils import DBUtils
from twitter_objects import Tweet, Follow, User

class TwitterAPI:
    def __init__(self, user, password, database, host="localhost"):
        self.dbu = DBUtils(user, password, database, host)

    def post_tweet(self, tweet):
        sql = "INSERT INTO tweets (user_id, tweet_text) VALUES (%s, %s)"
        val = (tweet.user_id, tweet.tweet_text)
        self.dbu.insert_one(sql, val)

    def get_timeline(self, user_id):
        sql = "SELECT TOP 10 tweet_text FROM tweets JOIN follows ON tweet.user_id = follows.user id WHERE user_id = %s ORDER BY tweet_ts DESC"
        val = (user_id,)
        self.dbu.select_all(sql, val)