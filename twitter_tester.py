import os
from twitter_mysql import TwitterAPI
from twitter_objects import Tweet, Follow, User
import pandas as pd

def main():
    #Authenticate
    api = TwitterAPI('pySQL', 'Python123', 'test_twitter')

    # Post the tweets from the tweets_sample.csv file
    df = pd.read_csv('data/tweets_sample.csv')
    for row in range(len(df)):
        tweet = Tweet(int(df['USER_ID'][row]), df['TWEET_TEXT'][row])
        api.post_tweet(tweet)

    api.dbu.close()


if __name__ == '__main__':
    main()


    



